# 🌍 World Time App

A simple and elegant Flutter application that displays the current local time for different cities around the world. Users can choose a location from a predefined list and instantly view the current time along with a dynamic day/night background.

## ✨ Features

* 🌎 Select a city from a list of world locations.
* 🕒 Fetch the current local time using a World Time API.
* 🌞 Dynamic background changes based on day or night.
* 🏳️ Display country flags for each location.
* ⚡ Smooth navigation between screens.
* 📱 Built with Flutter using null safety.


## 🛠️ Tech Stack

* **Flutter**
* **Dart**
* **HTTP Package**
* **World Time API**
* **Material Design**

---

## 📂 Project Structure

```
lib/
│
├── main.dart
│
├── pages/
│   ├── loading.dart
│   ├── home.dart
│   └── choose_location.dart
│
└── services/
    └── world_time.dart
```

---

## 🚀 Getting Started

### Prerequisites

* Flutter SDK installed
* Android Studio or VS Code
* Android Emulator or Physical Device

### Installation

Clone the repository:

```bash
git clone https://github.com/amolkr/world-time-app.git
```

Navigate into the project:

```bash
cd world-time-app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.x.x
  intl: ^0.x.x
```

---

## 📖 How It Works

1. The app starts with a loading screen.
2. It fetches the current time for a default location.
3. The Home screen displays:

   * Current Time
   * Selected Location
   * Country Flag
   * Day/Night Background
4. Users can tap **Edit Location** to choose another city.
5. The selected location is returned to the Home screen and the UI updates automatically.

---

## 🎯 Learning Objectives

This project demonstrates:

* Stateful Widgets
* Navigation & Routing
* Passing Data Between Screens
* Async & Await
* HTTP API Requests
* JSON Parsing
* State Management with `setState()`
* Null Safety in Dart
* Dynamic UI Updates

---

## 🔮 Future Improvements

* Search locations
* Add more countries
* Automatic timezone detection
* Favorite locations
* Weather information
* Digital & Analog clock views
* Dark/Light theme toggle

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch
3. Commit your changes
4. Push the branch
5. Open a Pull Request

---