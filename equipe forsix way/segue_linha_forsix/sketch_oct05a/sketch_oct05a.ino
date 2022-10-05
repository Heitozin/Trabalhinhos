int sensorlula= A1;
int sensorbolso= A2;
int motoref= 7;
int motoret= 6;
int motordf= 5;
int motordt= 4;


void setup() {
  // put your setup code here, to run once:
  pinMode(sensorlula, INPUT);
  pinMode(sensorbolso, INPUT);

  pinMode(motoref, OUTPUT);
pinMode(motoret, OUTPUT);
pinMode(motordf, OUTPUT);
pinMode(motordf, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  sensorlula=analogRead(A1);
  sensorbolso=analogRead(A2);
  Serial.print("sensor1=");
  Serial.print(sensorlula);
  Serial.print("||");
  Serial.print("sensor2=");
  Serial.print(sensorbolso);
  if((sensorlula == 0) && (sensorbolso == 1));
  {
analogWrite (motoref, 0);
analogWrite (motoret, 100);
analogWrite (motordf, 100);
analogWrite (motordt, 0);
}
if((sensorlula == 0) && (sensorbolso == 0));
{
  analogWrite (motoref, 100);
analogWrite (motoret, 0);
analogWrite (motordf, 0);
analogWrite (motordt, 100);
}
if((sensorlula == 1) && (sensorbolso == 0));
{
analogWrite (motoref, 0);
analogWrite (motoret, 100);
analogWrite (motordf, 100);
analogWrite (motordt, 0);
}

  

}
