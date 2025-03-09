plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutter_pokedex"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.flutter_pokedex"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "default"

    productFlavors {
        create("production") {
            dimension = "default"
            resValue("string", "app_name", "Flutter Pokedex")
            applicationIdSuffix = ""
        }

        create("staging") {
            dimension = "default"
            resValue("string", "app_name", "[STAGING] Flutter Pokedex")
            applicationIdSuffix = ".stg"
            versionNameSuffix = ".stg"
        }

        create("development") {
            dimension = "default"
            resValue("string", "app_name", "[DEV] Flutter Pokedex")
            applicationIdSuffix = ".dev"
            versionNameSuffix = ".dev"
        }
    }


    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    
}

flutter {
    source = "../.."
}
