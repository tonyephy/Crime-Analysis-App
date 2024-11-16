import 'package:crime_app/splash%20screen.dart';
 // Adjust the path if needed
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart'; // Ensure this import points to the generated options file

void main() async {
  // Ensure binding is initialized before Firebase initialization
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the options from firebase_options.dart
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use the generated options for the current platform
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crime Analysis App',
      theme: ThemeData.dark(),
      home: const SplashScreen(), // Start with the splash screen
    );
  }
}
