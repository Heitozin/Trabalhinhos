int sensor = 2;
int sensorDois = 4;

void setup () {
 
digitalWrite (sensor, INPUT);
digitalWrite (sensorDois, INPUT);

Serial.begin (9600);
}

void loop () {
sensor = digitalRead (2);
sensorDois = digitalRead (4);

Serial.print ("sensor = " );            
  Serial.println (sensor);

  Serial.print ("sensorDois =");
  Serial.println (sensorDois);

}  