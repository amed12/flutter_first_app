/// Model for Unsplash Image
class UnsplashImage {
  dynamic data;

  UnsplashImage(this.data);

  getUrls() {
    return data['urls'] ?? [];
  }

  String getSmallUrl() {
    return getUrls()['small'] ?? 'https://placehold.co/250';
  }
}
