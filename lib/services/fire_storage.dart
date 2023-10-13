import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FireStorage {
  static Future<List<dynamic>> fetchJsonData() async {
    try {
      final storage = firebase_storage.FirebaseStorage.instance;
      final ref = storage.ref().child('en_ingridient.json');
      final url = await ref.getDownloadURL();

      // You can fetch the JSON data using the 'http' package or any other method
      // This example uses the 'http' package for simplicity

      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        // Parse the JSON data and return it as a Map<String, dynamic>
        return jsonData;
      } else {
        // Handle HTTP request error
        throw Exception('Failed to load JSON data');
      }
    } catch (e) {
      // Handle any errors that occur during the process
      debugPrint('Error downloading or parsing file: $e');
      // Return an empty Map or an error indicator as needed
      return [];
    }
  }
}