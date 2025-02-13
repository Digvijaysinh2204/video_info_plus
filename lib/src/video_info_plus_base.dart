class VideoInfoPlus {
  /// Extracts the video ID from a YouTube URL.
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
  String getThumbnailUrl({required String url}) {
    // Placeholder return value instead of the actual thumbnail URL
    return getVideoIdFromUrl(url: url);
  }
}
