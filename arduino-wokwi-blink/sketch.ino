const int LED_PIN = 8;
const int BUTTON_PIN = 5;
int pressCount = 0;
bool lastButtonState = HIGH;

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(BUTTON_PIN, INPUT_PULLUP);
  Serial.begin(115200);
  Serial.println("Wokwi Blink demo started");
}

void loop() {
  int buttonState = digitalRead(BUTTON_PIN);

  // Detect button press (transition from HIGH to LOW)
  if (buttonState == LOW && lastButtonState == HIGH) {
    pressCount++;
    Serial.print("Button pressed! Press count: ");
    Serial.println(pressCount);
    digitalWrite(LED_PIN, HIGH);
    Serial.println("LED ON");
  } else if (buttonState == HIGH && lastButtonState == LOW) {
    digitalWrite(LED_PIN, LOW);
    Serial.println("Button released - LED OFF");
  }

  lastButtonState = buttonState;
  delay(50);
}
