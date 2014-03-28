void setup() {
  // pins for player1
  pinMode(12, INPUT);
  pinMode(11, INPUT);
  pinMode(10, INPUT);
  pinMode(9, INPUT);
  
  // pins for player2
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  
  Serial.begin(9600);
}

void loop() {
  byte valueOne = B0;    // byte for player1, holds information about the gesture
  byte valueTwo = B1;    // byte for player2, holds information about the gesture
  
  int sensorValue1a = digitalRead(12);    //index finger, player1
  int sensorValue2a = digitalRead(11);    //middle finger, player1
  int sensorValue3a = digitalRead(10);    //ring finger, player1
  int sensorValue4a = digitalRead(9);     //little finger, player1
  
  int sensorValue4b = digitalRead(2);     //little finger, player2
  int sensorValue3b = digitalRead(3);     //ring finger, player2
  int sensorValue2b = digitalRead(4);     //middle finger, player2
  int sensorValue1b = digitalRead(5);     //index finger, player2
  
  //setting gesture for player1
  if(sensorValue1a == HIGH){
    valueOne = valueOne | B10;
  }
  if(sensorValue2a == HIGH){
    valueOne = valueOne | B100;
  }
  if(sensorValue3a == HIGH){
    valueOne = valueOne | B1000;
  }
  if(sensorValue4a == HIGH){
    valueOne = valueOne | B10000;
  }
  
  //setting gesture for player2
  if(sensorValue1b == HIGH){
    valueTwo = valueTwo | B10;
  }
  if(sensorValue2b == HIGH){
    valueTwo = valueTwo | B100;
  }
  if(sensorValue3b == HIGH){
    valueTwo = valueTwo | B1000;
  }
  if(sensorValue4b == HIGH){
    valueTwo = valueTwo | B10000;
  }
  
  Serial.write(valueOne);
  Serial.write(valueTwo);
  
  delay(500);        // delay in between reads for stability
}
