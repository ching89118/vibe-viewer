# Project Overview: vibe-viewer

## Introduction

`vibe-viewer` is a Flutter-based application designed to provide a seamless and visually appealing user experience for music enthusiasts. The project leverages Flutter's cross-platform capabilities to deliver consistent functionality across iOS, Android, web, and desktop platforms.

## Features

- **Home Page**: Displays curated album lists such as "重溫經典", "熱門電台", and "無論晴天雨天，音樂一直在".
- **Bottom Navigation**: Includes navigation options for Home, Search, Music Library, Premium, and Create.
- **Player Card Section**: Highlights recently played tracks with album details and playback controls.
- **Album Row Section**: Dynamically displays categorized albums with artist and album details.
- **Responsive Design**: Ensures a consistent user experience across multiple devices and screen sizes.

## Project Structure

The project is organized as follows:

- **`lib/`**: Contains the main application logic and UI components.
  - `components/`: Reusable UI components such as the bottom navigator and player card.
  - `data/`: Includes predefined album lists and data models.
  - `models/`: Defines the data structures used throughout the application.
  - `services/`: Handles external API integrations (e.g., Spotify).
  - `my_home_page.dart`: The main screen of the application.
- **`assets/`**: Stores static resources like images and icons.
- **`web/`**: Contains web-specific configurations and assets.
- **`ios/` and `android/`**: Platform-specific configurations for iOS and Android.
- **`macos/` and `windows/`**: Desktop-specific configurations.

## Dependencies

The project uses the following key dependencies:

- `flutter`: Core Flutter SDK for building the application.
- `http`: For making network requests.
- `flutter_svg`: For rendering SVG assets.
- `cupertino_icons`: Provides iOS-style icons.

## Environment Variables

To run the project, you need to set up the following environment variables in a `.env` file at the root of the project:


## How to Run

1. Ensure you have Flutter installed. Refer to the [Flutter installation guide](https://docs.flutter.dev/get-started/install).
2. Clone the repository and navigate to the project directory.
3. Run `flutter pub get` to fetch dependencies.
4. Use `flutter run` to launch the application on your desired platform.

## Future Enhancements

- Integration with Spotify API for dynamic album and playlist data.
- Enhanced search functionality for discovering music.
- User authentication and personalized music recommendations.

For more details, refer to the [Flutter documentation](https://docs.flutter.dev/).