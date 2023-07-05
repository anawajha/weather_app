class ImageManager {
  static final ImageManager _instance = ImageManager._();

  ImageManager._();

  factory ImageManager() {
    return _instance;
  }

  final String logo = 'assets/images/logo.png';
}
