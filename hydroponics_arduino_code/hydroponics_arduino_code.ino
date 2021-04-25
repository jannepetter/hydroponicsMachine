int duty_cycle = 200; // Between 0 and 255, controls the motor speed
int up_threshold = 640;
int down_threshold_red = 400;
int down_threshold_yellow = 580;
int val_up;
int val_down;
unsigned long time_now = 0;
unsigned long fill_moment = 0;
String down = "down";
String up = "up";

void setup() {
  // put your setup code here, to run once:
  pinMode(9, OUTPUT); // PWD-control to the motor
  pinMode(A0, INPUT); // Upper sensor
  pinMode(A1, INPUT); // Lower sensor
  pinMode(8, OUTPUT); // RED LED
  pinMode(7, OUTPUT); // YELLOW LED
  pinMode(3, OUTPUT); // For the upper sensor
  pinMode(2, OUTPUT); // For the lower sensor
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(3, HIGH);
  delay(10);
  val_up = analogRead(A0);
  Serial.println(up + val_up);
  time_now = millis(); // time in milliseconds from the beginning of the program
  if (val_up < up_threshold and (time_now - fill_moment) > 9000) {
    analogWrite(9, duty_cycle);
    while (val_up < up_threshold) {
      delay(250);
      val_up = analogRead(A0);
      Serial.println(up + val_up);
    }
    analogWrite(9, 0);
    fill_moment = time_now;
  }
  digitalWrite(3, LOW);
  
  if (fill_moment > time_now) {
    // millis() resets in about each 50 days
    // this will reset the time of the last fill moment when the reset of millis() occurs
    fill_moment = time_now;
  }

  digitalWrite(2, HIGH);
  delay(10);
  val_down = analogRead(A1);
  digitalWrite(2, LOW);
  Serial.println(down + val_down);
  if (val_down < down_threshold_red) {
    digitalWrite(8, HIGH);
    delay(1000);
    digitalWrite(8, LOW);
  } else if (val_down > down_threshold_yellow) {
    digitalWrite(7, HIGH);
    delay(1000);
    digitalWrite(7, LOW);
  }
  delay(980);
}
