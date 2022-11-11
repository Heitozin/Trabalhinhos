const int PINO_SENSOR_S0 = 8; // Pino 8 da BlackBoard conectado ao pino S0 do TCS230
const int PINO_SENSOR_S1 = 9; // Pino 9 da BlackBoard conectado ao pino S1 do TCS230
const int PINO_SENSOR_S2 = 11; // Pino 12 da BlackBoard conectado ao pino S2 do TCS230
const int PINO_SENSOR_S3 = 12; // Pino 11 da BlackBoard conectado ao pino S3 do TCS230
const int PINO_SENSOR_OUT = 10; // Pino 10 da BlackBoard conectado ao pino OUT do TCS230

const int PINO_LED_VERMELHO = 2; // Pino correspondente a cor vermelha
const int PINO_LED_VERDE = 3; // Pino correspondente a cor verde
const int PINO_LED_AZUL = 4; // Pino correspondente a cor azul

// Variaveis que armazenam o valor das cores
int vermelho = 0;
int verde = 0;
int azul = 0;

void setup(){
  
  pinMode(PINO_SENSOR_S0, OUTPUT); // Pino S0 configurado como saida
  pinMode(PINO_SENSOR_S1, OUTPUT); // Pino S1 configurado como saida
  pinMode(PINO_SENSOR_S2, OUTPUT); // Pino S2 configurado como saida
  pinMode(PINO_SENSOR_S3, OUTPUT); // Pino S3 configurado como saida
  pinMode(PINO_SENSOR_OUT, INPUT); // Pino OUT configurado como entrada

  pinMode(PINO_LED_VERMELHO, OUTPUT); // Pino Vermelho RGB configurado como saida
  pinMode(PINO_LED_VERDE, OUTPUT); // Pino Verde RGB configurado como saida
  pinMode(PINO_LED_AZUL, OUTPUT); // Pino Azul RGB configurado como saida

  digitalWrite(PINO_SENSOR_S0,HIGH); // Inicia o codigo com o pino S0 em nivel alto
  digitalWrite(PINO_SENSOR_S1,LOW); // Inicia o codigo com o pino S1 em nivel baixo

}

void loop(){
  leitura_cores(); // Chama a rotina que le as cores

  // Verifica se a cor vermelha foi detectada
  if (vermelho < azul && vermelho < verde){
    digitalWrite(PINO_LED_VERMELHO, HIGH); // Vermelho em nivel alto
    digitalWrite(PINO_LED_VERDE, LOW); // Verde em nivel baixo
    digitalWrite(PINO_LED_AZUL, LOW); // Azul em nivel baixo
  }
  
  if (azul < vermelho && azul < verde) { // Verifica se a cor azul foi detectada
    digitalWrite(PINO_LED_VERMELHO, LOW); // Vermelho em nivel baixo
    digitalWrite(PINO_LED_VERDE, LOW); // Verde em nivel baixo
    digitalWrite(PINO_LED_AZUL, HIGH); // Azul em nivel alto
  }
  
  if (verde < vermelho && verde < azul) { // Verifica se a cor verde foi detectada
    digitalWrite(PINO_LED_VERMELHO, LOW); // Vermelho em nivel baixo
    digitalWrite(PINO_LED_VERDE, HIGH); // Verde em nivel alto
    digitalWrite(PINO_LED_AZUL, LOW); // Azul em nivel baixo
  }

  delay(100); // Aguarda 100 milissegundos

}

// Rotina que le o valor das cores
void leitura_cores(){
  
  digitalWrite(PINO_SENSOR_S2, LOW); // Pino S2 em nivel baixo
  digitalWrite(PINO_SENSOR_S3, LOW); // Pino S3 em nivel baixo

 Serial.print(PINO_SENSOR_S2);

 Serial.print(PINO_SENSOR_S3);
}
