const int TrigPin = 2;
const int EchoPin = 3;
int r = 0;
int g = 0;
int b = 0;
float cm;


void setup() {
  Serial.begin(9600);
  pinMode(TrigPin, OUTPUT);
  pinMode(EchoPin, INPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);

}

void loop() {
  digitalWrite(TrigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TrigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TrigPin, LOW);

  cm = pulseIn(EchoPin, HIGH) / 58.8;
  cm = (int(cm * 100.0)) / 100;
  if (cm >= 1 && cm <= 4)
  {
    analogWrite(9, 255);
    analogWrite(10, 0);
    analogWrite(11, 0);
  }

  if (cm > 4 && cm <= 7) {
    analogWrite(9, 255);
    analogWrite(10, 255);
    analogWrite(11, 0);
  }
  if (cm > 7 && cm <= 10) {
    analogWrite(9, 0);
    analogWrite(10, 255);
    analogWrite(11, 0);
  }

}
