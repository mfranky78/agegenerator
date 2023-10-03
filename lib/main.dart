

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_age_generator/features/onboarding/logo_screen_page.dart';

 void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>("userBox"); // Box für Benutzerdaten
  runApp( const MaterialApp(home:LogoPage()));
  


 }