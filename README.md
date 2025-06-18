# AUVNET Internship Assessment

A Flutter project for the AUVNET Internship Assessment.

## Getting Started

This project is built with [Flutter](https://flutter.dev/). To run and develop the project, ensure you have Flutter installed.

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart) (usually included with Flutter)
- An IDE such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. Clone this repository:
    ```sh
    git clone <repository-url>
    cd auvnet_internship_assessment
    ```

2. Get the dependencies:
    ```sh
    flutter pub get
    ```

### Running the App

To run the app on an emulator or connected device:
```sh
flutter run
```

### Building for Release

To build the app for release (Android example):
```sh
flutter build apk --release
```

For iOS:
```sh
flutter build ios --release
```

## Project Structure

The project follows a modular and clean architecture approach:

- `lib/core/`  
  Contains core files and utilities shared across multiple features, such as routing, extensions, styles, and common widgets.

- `lib/features/`  
  Contains all feature modules. Each feature is self-contained and follows clean architecture principles:
    - `data/` – Data sources and repositories (e.g., API, Firebase, local storage).
    - `domain/` – Business logic and entities (pure Dart classes).
    - `presentation/` – UI code, including states (BLoC/Cubit), pages, and widgets.

- `assets/`  
  Static assets such as images and SVGs.

- Platform folders:  
  - `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/` – Platform-specific code and configuration.

Other notable files:
- `pubspec.yaml` – Project dependencies and asset declarations.
- `README.md` – Project documentation (this file).

This structure encourages separation of concerns, scalability, and maintainability.
