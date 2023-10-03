import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


Future<int?> fetchData(String name) async {
  try {
    final response =
        await http.get(Uri.parse('https://api.agify.io?name=$name'));
    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      final int? age = jsonData['age'] as int?;
      if (age != null) {
        return age;
      }
    }
  } catch (e) {
    debugPrint('Error fetching data: $e');
   
  }
  return null;
}
