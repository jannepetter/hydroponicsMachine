int duty_cycle = 200; // Between 0 and 255, controls the motor speed
int up_threshold = 500;
int down_threshold_red = 400;
int down_threshold_yellow = 600;
int val_up;
int val_down;
unsigned long time_now = 0;
unsigned long fill_moment = 0;
String down = "down";
String up = "up";
int RED_LED = 8;
int YELLOW_LED = 7;
int MOTORPIN = 9;
int UPSENSOR_OUT = 3;
int DOWNSENSOR_OUT = 2;
int UPSIGNALPIN = A0;
int DOWNSIGNALPIN = A1;
int loopcount = 0;
int maxloopcount = 56;
int interval = 90000;

void setup() {
  // put your setup code here, to run once:
  pinMode(MOTORPIN, OUTPUT); // PWD-control to the motor
  pinMode(UPSIGNALPIN, INPUT); // Upper sensor
  pinMode(DOWNSIGNALPIN, INPUT); // Lower sensor
  pinMode(RED_LED, OUTPUT); // RED LED
  pinMode(YELLOW_LED, OUTPUT); // YELLOW LED
  pinMode(UPSENSOR_OUT, OUTPUT); // For the upper sensor
  pinMode(DOWNSENSOR_OUT, OUTPUT); // For the lower sensor
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(UPSENSOR_OUT, HIGH);
  delay(10);
  val_up = analogRead(UPSIGNALPIN);
  Serial.println(up + val_up);
  time_now = millis(); // time in milliseconds from the beginning of the program
  if (val_up < up_threshold and (time_now - fill_moment) > interval) {
    analogWrite(MOTORPIN, duty_cycle);
    while (val_up < up_threshold and loopcount < maxloopcount){
      delay(250);
      val_up = analogRead(UPSIGNALPIN);
      Serial.println(up + val_up);
      loopcount += 1;
    }
    loopcount = 0;
    analogWrite(MOTORPIN, 0);
    time_now = millis();
    fill_moment = time_now;
  }
  digitalWrite(UPSENSOR_OUT, LOW);
  
  if (fill_moment > time_now) {
    // millis() resets in about each 50 days
    // this will reset the time of the last fill moment when the reset of millis() occurs
    fill_moment = time_now;
  }

  digitalWrite(DOWNSENSOR_OUT, HIGH);
  delay(10);
  val_down = analogRead(DOWNSIGNALPIN);
  digitalWrite(DOWNSENSOR_OUT, LOW);
  Serial.println(down + val_down);
  if (val_down < down_threshold_red) {
    digitalWrite(RED_LED, HIGH);
    delay(1000);
    digitalWrite(RED_LED, LOW);
  } else if (val_down > down_threshold_yellow) {
    digitalWrite(YELLOW_LED, HIGH);
    delay(1000);
    digitalWrite(YELLOW_LED, LOW);
  }
  delay(980);
}
