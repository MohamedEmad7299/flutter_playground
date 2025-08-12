import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'FlutterTasks/tom_kitchen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Background color of status bar
      statusBarIconBrightness: Brightness.dark, // For Android
      statusBarBrightness: Brightness.light, // For iOS
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TomKitchen(),
    );
  }
}