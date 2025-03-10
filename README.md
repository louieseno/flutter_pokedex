# Flutter Pokédex

A Flutter app that utilizes a free open API to view Pokémon, search for specific ones, and access basic details.

## Table of Contents

- [Getting Started 🚀](#getting-started-🚀)
  - [Prerequisites](#prerequisites)
    - [Flutter SDK](#flutter-sdk)
    - [Dart SDK](#dart-sdk)
    - [FVM](#fvm)
    - [Android Studio/Xcode](#android-studioxcode)
    - [Verify Environment Setup](#verify-environment-setup)
  - [Installation](#installation)
    - [Clone the Repository](#clone-the-repository)
    - [Get project dependencies](#get-project-dependencies)
    - [Analyze the project code](#analyze-the-project-code)
- [Usage 📱](#usage-📱)
- [Running Tests 🧪](#running-tests-🧪)
- [Troubleshooting 🛠️](#troubleshooting-🛠️)

<br>

## Getting Started 🚀

- ### Prerequisites

  - #### **Flutter SDK**:

    Flutter is required for running and building the app.

    - You can install Flutter by following the [official installation guide][flutter_install].
    - Verify your Flutter installation with:

    ```bash
      flutter --version
    ```

  - #### **Dart SDK**:

    Dart is included with Flutter, but you can install it separately if needed.

    - Verify with:

    ```bash
      dart --version
    ```

  - #### **FVM**:

    FVM(Flutter Version Management) makes it easier to manage different Flutter versions.

    - Install FVM using Dart:

    ```bash
      dart pub global activate fvm
    ```

    _**Note:** Other ways to install FVM into your system: [FVM Installtion][fvm_install]._

    - Verify the FVM installation:

    ```bash
      fvm --version
    ```

    - Install a specific Flutter version:

      _**Note:** Flutter version use is stable(3.29.0). Check FVM configuration for future updates._

    ```bash
      fvm install stable
    ```

    - Set the Flutter version for the current project:

    ```bash
      fvm use stable
    ```

    - Verify list of installed versions:

    ```bash
      fvm list
    ```

  - #### **Android Studio/Xcode**:

    For setting up emulators and building the app on Android or iOS devices.

    - Install [Android Studio][android_studio] for Android development.
    - Install [Xcode][xcode] for iOS development (macOS only).

  - #### **Verify Environment Setup**:

    Flutter helps you ensure that everything necessary is correctly installed and
    configured before starting development.

    Instead of using `flutter`, we’ll use `fvm flutter` command to ensure the correct
    version is used.

    ```bash
      fvm flutter doctor
    ```

- ### Installation

  - #### **Clone the repository:**

    ```bash
      git clone https://github.com/louieseno/flutter_pokedex.git
    ```

  - #### **Set up your .env files:**

  Copy `.env.example` into your `.env` file, it should look like this:

  ```bash
    BASE_API_URL="https://pokeapi.co/api/v2"
  ```

  _Note: The value in .env.example is already set to https://pokeapi.co/api/v2 since this project uses a free public API for testing. You don't need to modify this unless you're using a different API or self-hosting a backend._

  - #### Get project dependencies

    ```bash
      fvm flutter pub get
    ```

  - #### Analyze the project code
    ```bash
    fvm flutter analyze
    ```

## Usage 📱

This project contains 3 flavors (only supported for iOS and Android):

- development
- staging
- production

_macOS_ flavor support has not been configured.

To run the desired flavor either use the launch configuration in VSCode
or use the following commands:

```bash
  # Development
  fvm flutter run --flavor development -t lib/main_development.dart -d <device-id>

  # Staging
  fvm flutter run --flavor staging -t lib/main_staging.dart -d <device-id>

  # Production
  fvm flutter run --flavor production -t lib/main_production.dart -d <device-id>
```

You can also utilize VSCode launch config.

## Running Tests 🧪

To run all unit tests use the following command:

```bash
fvm flutter test --coverage --test-randomize-ordering-seed random
```

To generate and view a coverage report, you need [lcov][lcov]. If it's missing, install it with:

- macOS (Homebrew):

```bash
brew install lcov
```

- Linux (Debian Based):

```bash
sudo apt-get install lcov
```

Generate and Open Report

```bash
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

## Troubleshooting 🛠️

If you encounter any issues while using the app, please open an issue.

Your contributions help me to improve the app.

[android_studio]: https://developer.android.com/studio
[flutter_install]: https://docs.flutter.dev/get-started/install
[fvm_install]: https://fvm.app/documentation/getting-started/installation
[xcode]: https://developer.apple.com/xcode/
[lcov]: https://github.com/linux-test-project/lcov
