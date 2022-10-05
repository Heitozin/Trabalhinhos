int fe-motor = 7;
int fd-motor = 6;
int te-motor = 5;
int td-motor = 4;

int s-Esquerda = 12;
int s-Direita = 13;

void setup()
{
  //Configuração da porta de motores
  pinMode(fe-motor, OUTPUT);
  pinMode(fd-motor, OUTPUT);
  pinMode(te-motor, OUTPUT);
  pinMode(td-motor, OUTPUT);
  
//Configuração da porta dos sensores
  pinMode(s-Esquerda, INPUT);
  pinMode(s-Direita, INPUT);

//Configuração do motor serial
  Serial.begin(9600);
  }

  void loop()
  {
    s-Esquerda = digitalRead(12);
    s-Direita = digitalRead(13);
    
    if((s-Esquerda == 0) && (s-Direita == 1))
    {
   analogWrite(fe-motor, 100);
   analogWrite(fd-motor, 0);
   analogWrite(te-motor, 0);
   analogWrite(td-motor, 100);
    }
    if((s-Esquerda == 1) && (s-Direita == 0))
    {
   analogWrite(fe-motor, 0);
   analogWrite(fd-motor, 100);
   analogWrite(te-motor, 100);
   analogWrite(td-motor, 0);
   }
    if((s-Esquerda == 0) && (s-Direita == 0))
    {
   analogWrite(fe-motor, 100);
   analogWrite(fd-motor, 100);
   analogWrite(te-motor, 100);
   analogWrite(td-motor, 100);
   }
