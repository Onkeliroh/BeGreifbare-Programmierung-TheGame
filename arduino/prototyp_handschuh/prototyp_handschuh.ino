/*
  AnalogReadSerial
  Reads an analog input on pin 0, prints the result to the serial monitor.
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground.
 
 This example code is in the public domain.
 */

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  int sensorValue0 = analogRead(A0);
  int sensorValue1 = analogRead(A1);
  int sensorValue2 = analogRead(A2);
  int sensorValue3 = analogRead(A3);
  
  if(sensorValue0 != 0){
    Serial.println("indexFinger");
  }
  if(sensorValue1 != 0){
    Serial.println("middleFinger");
  }
  if(sensorValue2 != 0){
    Serial.println("ringFinger");
  }
  if(sensorValue3 != 0){
    Serial.println("pinky");
  }
  // print out the value you read:
  //Serial.println(sensorValue);
  delay(100);        // delay in between reads for stability
}
