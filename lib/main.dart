import 'package:brawn_app_test/app.dart';
import 'package:brawn_app_test/config/main.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureApp();
  runApp(const App());
}
