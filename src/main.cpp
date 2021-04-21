#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <WifiUDP.h>
#include <String.h>
#include <NTPClient.h>
#include <Time.h>
#include <TimeLib.h>
#include <Timezone.h>
#include <BME280I2C.h>
#include <U8g2lib.h>
#include <Wire.h>
#include <SPI.h>

void setup_wifi();
void updateTime();
bool subscirbeTopics();
void pumpRun();
void sendEnvData();
void updateBME280Data();

const char* ssid = "";
const char* password = "";
const char* mqtt_server = "";
const char* devname = "ESP8266_test";

const uint8_t lightPin = D4;
const uint8_t pumpPin = D5; 
const uint32_t pwmFreq = 4000;

uint32_t pumpTimer;
uint32_t pumpRunTime = 10000;
uint32_t pumpInterval = 86400; //24 hours 
uint32_t lastPumpRun; 
unsigned long lastMsg;
unsigned long lastTimeUpdate;
unsigned long current;
int lightIntensity = 1023;

bool pumpTrigger = false;
bool pumpRunning;
bool lightEnable;
bool lightOverride;

WiFiClient espClient;
PubSubClient client(espClient);

// Define NTP properties
#define NTP_OFFSET   60 * 60      // In seconds
#define NTP_INTERVAL 60 * 1000    // In miliseconds
#define NTP_ADDRESS  "pool.ntp.org"  // change this to whatever pool is closest (see ntp.org)

// Set up the NTP UDP client
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, NTP_ADDRESS, NTP_OFFSET, NTP_INTERVAL);

BME280I2C bme;
U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE, /* clock=*/ SCL, /* data=*/ SDA);   // pin remapping with ESP8266 HW I2C

const char* lightToggleTopic = "growlights/dev1/lightToggle";
const char* pumpToggleTopic = "growlights/dev1/pumpToggle";
const char* lightIntensityTopic = "growlights/dev1/lightIntensity";
const char* pumpdutyTopic = "growlights/dev1/pumpdutyCycle";

const char* tempTarget = "dev1/sensors/temp1";
const char* humTarget = "dev1/sensors/hum1";
const char* pressTarget = "dev1/sensors/press1";


String date;
String t;
const char * days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"} ;
const char * months[] = {"Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"} ;
const char * ampm[] = {"AM", "PM"} ;
 

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (uint8_t i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }

}

bool subscribeTopics(){
  bool one = client.subscribe(lightToggleTopic);
  bool three = client.subscribe(pumpToggleTopic);
  bool two = client.subscribe(lightIntensityTopic);
  bool four = client.subscribe(pumpdutyTopic);

  return (one && two && three && four);
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected to MQTT Broker");
      subscribeTopics();
    } 
    else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 2 seconds");
      // Wait 5 seconds before retrying
      delay(2000);
    }
  }
}

void setup() {
  Serial.begin(115200);
  setup_wifi();
  timeClient.begin();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  u8g2.begin();
  analogWriteFreq(pwmFreq);
  Wire.begin();

  while(!bme.begin()) {
    Serial.println("Could not find BME280 sensor!");
    delay(1000);
  }

}

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.hostname(devname);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}



void updateTime() {
  date = "";  // clear the variables
  t = "";

  timeClient.update();
  unsigned long epochTime =  timeClient.getEpochTime();

  time_t local, utc;
  utc = epochTime;
  TimeChangeRule usEDT = {"EDT", Second, Sun, Mar, 2, -300};  //UTC - 5 hours - change this as needed
  TimeChangeRule usEST = {"EST", First, Sun, Nov, 2, -360};   //UTC - 6 hours - change this as needed
  Timezone usEastern(usEDT, usEST);
  local = usEastern.toLocal(utc);

  // now format the Time variables into strings with proper names for month, day etc
  date += days[weekday(local)-1];
  date += ", ";
  date += months[month(local)-1];
  date += " ";
  date += day(local);
  date += ", ";
  date += year(local);

  // format the time to 12-hour format with AM/PM and no seconds
  if (!(lightOverride)) {
    if ((hour(local) > 10) && (hour(local) < 18)) {
      lightEnable = true;
    }
    else {
      lightEnable = false;
    }

    if ((epochTime - lastPumpRun) > pumpInterval) {
      pumpTrigger = true;
      pumpRunning = true; 
      lastPumpRun = epochTime;
    }
  }


  t += hour(local);
  t += ":";
  if(minute(local) < 10)  // add a zero if minute is under 10
    t += "0";
  t += minute(local);
  t += " ";
  t += ampm[isPM(local)];

  // Display the date and time
  Serial.println("");
  Serial.print("Local date: ");
  Serial.print(date);
  Serial.println("");
  Serial.print("Local time: ");
  Serial.print(t);
}

void pumpRun() {

}


float temp(NAN), hum(NAN), pres(NAN);

void updateBME280Data () {
   BME280::TempUnit tempUnit(BME280::TempUnit_Fahrenheit);
   BME280::PresUnit presUnit(BME280::PresUnit_Pa);

   bme.read(pres, temp, hum, tempUnit, presUnit);
}

void sendEnvData () {
  updateBME280Data();

  client.publish(tempTarget, String(temp).c_str());
  client.publish(humTarget, String(hum).c_str());
  client.publish(pressTarget, String(pres).c_str());

}

void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();

  current = millis();
  if ((current - lastMsg) > 5000) {
    sendEnvData();
    lastMsg = current;
   
  }

  if ((current - lastTimeUpdate) > 30000) {
    updateTime();
    lastTimeUpdate = current;
  }

  if (lightEnable) {
    analogWrite(lightPin, lightIntensity);
  }
  else if (!(lightOverride)) {
    analogWrite(lightPin, 0);
  }

  if (pumpRunning) {
    if (pumpTrigger) {
      Serial.println("Starting Pump");
      analogWrite(pumpPin, 900);
      pumpTimer = current; 
      pumpTrigger = false;
    }
    if ((current - pumpTimer) > pumpInterval) {
      analogWrite(pumpPin, 0); 
      pumpRunning = false;
    }
  }
}
