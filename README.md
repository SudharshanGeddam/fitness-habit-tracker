# Fitness Habit Tracker

> A Flutter-based habit tracking application built with a UI-first and architecture-driven approach.

This project demonstrates clean UI design, smooth implicit animations, and scalable data flow architecture. It's designed as a learning resource for Flutter developers interested in state management and elegant UI implementation.

## ✨ Key Features

- **UI-first development** following a real [Figma design](https://www.figma.com/community/file/1342803551665795859)
- **Smooth implicit animations** for selections and interactions
- **Clean architecture** with separation of concerns (UI, models, storage)
- **Repository pattern** for centralized data handling
- **Local persistence** using JSON + SharedPreferences
- **Scalable design** - easily extendable to Firebase or REST APIs

## 📱 Screens Implemented

- **Create Habit**
    - Emoji-based habit icon selection
    - Color selection
    - Repeat type & days selection
    - Time of day selection
    - Animated "Create Habit" button
- **My Habits**
    - Dynamic display of created habits
    - Animated habit completion toggle
    - Real-time habit statistics
- **Reports** (Coming soon)
- **Account** (Coming soon)

## 🎬 Animation Implementation

This project intentionally focuses on implicit animations to demonstrate strong UI fundamentals:

- `AnimatedContainer` for smooth layout transitions
- `AnimatedScale` for interactive feedback
- State-driven color and border transitions
- Micro-interactions for selections and button feedback

## 🏗️ Architecture Overview

The app follows a clean and scalable structure:

```
UI Screens
   ↓
Habit Repository (Singleton)
   ↓
Data Models (JSON Serializable)
   ↓
Local Storage (SharedPreferences)
```

### Project Structure

```
lib/
├── main.dart                 # App entry point
├── core/                     # Core utilities and constants
├── features/                 # Feature modules
│   └── habits/
│       ├── data/             # Repositories and models
│       ├── presentation/     # UI screens and widgets
│       └── domain/           # Business logic
└── widgets/                  # Reusable UI components
```

## 🚫 Out of Scope (By Design)

The following are intentionally not implemented to keep the project focused:

- Firebase / cloud backend
- Authentication
- Advanced analytics
- Delete / reorder habits
- Charts and graphs

The architecture is designed so these can be added later without requiring major refactoring.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0 or higher)
- Dart SDK
- Android Studio or Xcode (for device emulation)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/SudharshanGeddam/fitness-habit-tracker.git
   cd fitness_habit_tracker
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## 🛠️ Tech Stack

- **Flutter** - UI framework
- **Dart** - Programming language
- **SharedPreferences** - Local data persistence
- **emoji_picker_flutter** - Emoji selection widget

## 📦 Dependencies

See `pubspec.yaml` for complete dependency list.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

**Sudharshan**
- B.Tech 3rd Year
- Flutter Developer specializing in UI & Animations
- [GitHub](https://github.com/SudharshanGeddam)



