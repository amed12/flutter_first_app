import 'dart:convert';
import '../models/recipes/recipes.dart';
import '../services/keys.dart';
import 'package:http/http.dart' as http;

class SpoonacularFoodApi {
  /// Asynchronously load a list of [Spoonacular] associated to a given [inggridient].
  static Future<List<Recipes>> loadRecipesByInggridient(
      String inggridient) async {
    // Search for image associated with the keyword
    String url =
        'https://api.spoonacular.com/recipes/findByIngredients?ingredients=$inggridient&apiKey=${Keys.spoonaCoolarAppId}';
    // receive image data from unsplash associated to the given keyword
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var data = (json.decode(response.body) as List<dynamic>)
          .map((data) => Recipes.fromJson(data))
          .toList();
      return data;
    } else {
      return [];
    }
  }
}
