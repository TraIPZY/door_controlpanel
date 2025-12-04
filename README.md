

# 📌 door_controlpanel

**Author:** TRAPZY
**Resource:** FiveM 
**Dependencies:** `ox_lib`, `ox_target`, `ox_doorlock`

---

## 🔹 Overview

`door_controlpanel` is a **versatile system for controlling multiple doors at once** from a **single control point** in-game.

The script uses **ox_target** for interaction and **ox_lib** to display modern notifications with a colored circle:

* 🟢 Green circle: **doors unlocked**
* 🔴 Red circle: **doors locked**

It is **easy to configure**, works directly on a **specific vector3**, and does not require a specific model or PolyZone.

**Note:** The script is **pre-built in French**, ready to use out of the box.

---

## 🔹 Features

* Unlock all configured doors with one click
* Lock all configured doors with one click
* Visual notifications with **ox_lib** (green/red circle)
* Single control point for offices, buildings, or secure zones
* Script comes **pre-built in French** for immediate use
* Quick and easy installation

---

## 🔹 Installation

1. Place the `door_controlpanel` folder in your `resources` directory.
2. Add it to your `server.cfg`:

```cfg
ensure door_controlpanel
```

3. Make sure dependencies are started before:

```cfg
ensure ox_lib
ensure ox_target
ensure ox_doorlock
```

---

## 🔹 Configuration

In `config.lua`:

```lua
-- Exact coordinates of the control point
Config.PanelCoords = vector3(1776.2200, 2490.3960, 50.3198)

-- List of ox_doorlock door IDs to control
Config.CellDoors = {11, 12, 13, 14, 15, 16, 17, 18}
```

* `PanelCoords`: exact coordinates of the control point
* `CellDoors`: IDs of doors managed by ox_doorlock

---

## 🔹 Usage

* Approach the control point in-game.
* The **ox_target** menu appears automatically:

  * Unlock all doors
  * Lock all doors
* When an action is performed, an **ox_lib notification** will appear:

  * 🟢 Green = doors unlocked
  * 🔴 Red = doors locked

---

## 🎥 Demo Video

Watch the demo video here: [Door ControlPanel Demo](https://r2.fivemanage.com/fvzpmKoNaaTzC1BzW59dp/2025-12-0412-00-30.mp4)

---

## 🔹 Support

For any questions or issues, contact **TRAPZY** on Discord: [https://discord.gg/rjjU2y93X7](https://discord.gg/rjjU2y93X7)


