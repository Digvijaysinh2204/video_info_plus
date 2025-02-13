class VideoInfoPlush {
  /// Extracts the video ID from a YouTube URL.
  /// This function is used to retrieve the unique identifier for a video from a given YouTube link.
  String getVideoIdFromUrl({required String url}) {
    String id;
    final uri = Uri.parse(url);
    if (uri.host == "youtu.be") {
      id = uri.pathSegments.first;
    } else {
      id = uri.queryParameters["v"]!;
    }
    return id;
  }

  /// Returns a placeholder instead of the thumbnail URL for a given YouTube video ID.
  /// This function provides a placeholder return value instead of the actual thumbnail URL.
  String getThumbnailUrl({required String url}) {
    // Placeholder return value instead of the actual thumbnail URL
    return getVideoIdFromUrl(url: url);
  }

  /// This package is intended for publication on pub.dev.
  /// Example app usage:
  /// ```dart
  /// void main() {
  ///   final videoInfo = VideoInfoPlush();
  ///   String videoId = videoInfo.getVideoIdFromUrl(url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ");
  ///   String thumbnailUrl = videoInfo.getThumbnailUrl(url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ");
  ///   print("Video ID: $videoId");
  ///   print("Thumbnail URL: $thumbnailUrl");
  /// }
  /// ```
}
