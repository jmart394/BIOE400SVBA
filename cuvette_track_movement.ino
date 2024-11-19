
const int PIN_EN = 5;
const int PIN_STEP = 6;
const int PIN_DIR = 7;

const int step_delay_ms = 1;
int steps_in = 0;
bool dir_in = false;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(PIN_STEP, OUTPUT);
  pinMode(PIN_DIR, OUTPUT);
  pinMode(PIN_EN, OUTPUT);

  digitalWrite(PIN_EN, HIGH);
  delay(3000);
  
  Serial.print("Setup\n");
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if(Serial.available()>0){
    steps_in = Serial.parseInt();
    Serial.println(steps_in);

    digitalWrite(PIN_EN, LOW);
    if(steps_in < 0) {
      steps_in = steps_in * -1;
      dir_in = true;
      digitalWrite(PIN_DIR, HIGH);
    }
    else {
      digitalWrite(PIN_DIR, LOW);
    }
    for (int i = 0; i < steps_in; i++)
    {
      digitalWrite(PIN_STEP, HIGH);
      delay(step_delay_ms);
      digitalWrite(PIN_STEP, LOW);
      delay(step_delay_ms);
    }
    digitalWrite(PIN_EN, HIGH);
    
  }
     
}
