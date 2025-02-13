# VideoInfoPlus

## Overview
VideoInfoPlus is a Dart plugin that provides functionality to extract video IDs from YouTube URLs and retrieve thumbnail images for those videos. This plugin is useful for developers who want to integrate YouTube video information into their applications.

## Features
- **Extract Video ID**: Easily extract the video ID from a given YouTube URL.
- **Get Thumbnail URL**: Retrieve a placeholder thumbnail URL for a specified YouTube video ID.

## Installation
To use VideoInfoPlus in your Dart or Flutter project, add the following dependency to your `pubspec.yaml` file:
```yaml
dependencies:
  video_info_plus: ^1.0.0
```

Then, run `flutter pub get` or `dart pub get` to install the package.

## Usage

### Importing the Package
First, import the package in your Dart file:

```dart
import 'package:video_info_plus/video_info_plus.dart';
```

### Extracting Video ID
To extract the video ID from a YouTube URL, use the `getVideoIdFromUrl` method:

```dart
final videoInfoPlus = VideoInfoPlus();
String videoId = videoInfoPlus.getVideoIdFromUrl(url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
print('Video ID: $videoId');
```

### Getting Thumbnail URL
To get the thumbnail URL for a YouTube video, use the `getThumbnailUrl` method:

```dart
String thumbnailUrl = videoInfoPlus.getThumbnailUrl(url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
print('Thumbnail URL: $thumbnailUrl');
```

## Example
Here's a complete example of how to use the VideoInfoPlus plugin:

```dart
import 'package:video_info_plus/video_info_plus.dart';

void main() {
  final videoInfoPlus = VideoInfoPlus();
  
  String url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
  
  String videoId = videoInfoPlus.getVideoIdFromUrl(url: url);
  print('Video ID: $videoId');
  
  String thumbnailUrl = videoInfoPlus.getThumbnailUrl(url: url);
  print('Thumbnail URL: $thumbnailUrl');
}
```

## Contributing
Contributions are welcome! If you have suggestions for improvements or new features, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Thanks to the Dart and Flutter communities for their support and resources.
