# Simple Arduino App for Wokwi

This project blinks an external LED connected to Arduino Uno pin 8.

## Files

- `sketch.ino`: Arduino program
- `diagram.json`: Circuit wiring for Wokwi
- `wokwi.toml`: Wokwi project config (useful in VS Code)
- `build_wokwi.sh`: builds `build/sketch.ino.hex` and `build/sketch.ino.elf`

## Run in Wokwi (Browser)

1. Open https://wokwi.com/projects/new/arduino-uno
2. Replace the default `sketch.ino` with this project's `sketch.ino`.
3. Open the diagram editor and replace `diagram.json` with this project's `diagram.json`.
4. Click **Start Simulation**.

You should see the red LED turning ON/OFF every 500 ms.

## Run in VS Code (Wokwi Extension)

1. Install the **Wokwi for VS Code** extension.
2. Open this folder in VS Code.
3. Build firmware first (required):
  - Terminal: `./build_wokwi.sh`
  - or run VS Code task: **Build Firmware For Wokwi**
4. Open `diagram.json` or `sketch.ino`.
5. Start simulation from the Wokwi command/action in VS Code.

If you change `sketch.ino`, run the build step again before starting Wokwi.

## Expected Behavior

- LED blinks with 1 second period (500 ms ON + 500 ms OFF)
- Serial monitor prints:
  - `Wokwi Blink demo started`
  - `LED ON`
  - `LED OFF`
