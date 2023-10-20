import 'dart:convert';

import 'package:first_app/models/unsplash_model.dart';
import 'package:first_app/services/keys.dart';
import 'package:http/http.dart' as http;

class UnsplashImageApi {
  /// Asynchronously load a list of [UnsplashImage] associated to a given [keyword].
  /// Returns a list where the first element is the [totalPages] available and the second element is a list of [UnsplashImage].
  /// [page] is the page index for the api request.
  /// [perPage] sets the length of the returned list.
  static Future<UnsplashImage?> loadImagesWithKeyword(String keyword,
      {int page = 1, int perPage = 10}) async {
    // Search for image associated with the keyword
    String url =
        'https://api.unsplash.com/search/photos?query=$keyword&page=$page&per_page=$perPage&order_by=popular&client_id=${Keys.unsplashAppId}';
    // receive image data from unsplash associated to the given keyword
    var data = await _getImageData(url);
    // generate UnsplashImage List from received data
    List<UnsplashImage> images =
        List<UnsplashImage>.generate(data['results'].length, (index) {
      return UnsplashImage(data['results'][index]);
    });
    // return Images
    return images.isNotEmpty ? images[0] : null;
  }

  /// Receive image data from a given [url] and return the JSON decoded the data.
  static dynamic _getImageData(String url) async {
    var response = await http.get(Uri.parse(url));
    // Process the response
    if (response.statusCode == 200) {
      // return decoded json
      return json.decode(response.body);
    } else {
      // something went wrong :(
      print("Http error: ${response.statusCode}");
      // return empty list
      return [];
    }
  }
}
