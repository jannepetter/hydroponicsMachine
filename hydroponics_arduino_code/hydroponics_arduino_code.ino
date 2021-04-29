
int duty_cycle = 200; // Between 0 and 255, controls the motor speed
int up_threshold = 500;
int down_threshold_red = 400;
int down_threshold_yellow = 590;
int val_up;
int val_down;

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

int restperiod= 40; // the time between pump action in seconds

// tank overflow in 17s
int maxloopcount = restperiod+16;


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
  digitalWrite(UPSENSOR_OUT, HIGH);
  digitalWrite(DOWNSENSOR_OUT, HIGH);
  delay(10);
  val_up = analogRead(UPSIGNALPIN);
  val_down = analogRead(DOWNSIGNALPIN);
  digitalWrite(DOWNSENSOR_OUT, LOW);
  digitalWrite(UPSENSOR_OUT, LOW);

  // for tuning
  Serial.println(up + val_up);
  Serial.println(down + val_down);
  Serial.println(loopcount);
  
  // rest period over -> start the motor (one loop last 1s)
  if (loopcount > restperiod) {
    analogWrite(MOTORPIN, duty_cycle);
  }
  
  // cut motor power and reset count when sensor says so or reach maxloopcount as backup
  if (val_up > up_threshold || loopcount >= maxloopcount){
    loopcount=0;
    analogWrite(MOTORPIN, 0);
  }

   if (val_down < down_threshold_red) {
    digitalWrite(RED_LED, HIGH);
  } else if (val_down > down_threshold_yellow) {
    digitalWrite(YELLOW_LED, HIGH);
  }

  delay(490);
  digitalWrite(YELLOW_LED, LOW);
  digitalWrite(RED_LED, LOW);
  loopcount++;
  delay(500);
}

