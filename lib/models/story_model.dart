import 'package:meta/meta.dart';
import 'models.dart';

enum MediaType {
  image,
  video,
}

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;
  final MediaType media;
  final Duration duration;

  const Story({
    @required this.user,
    @required this.imageUrl,
    this.isViewed = false,
    this.media,
    this.duration,
  });
}
