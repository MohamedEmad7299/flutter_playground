
import 'package:flutter/material.dart';
import 'package:flutter_playground/riverpod_tasks/weather_screen/wether_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {

  runApp(ProviderScope(child: FlutterPlayground()));
}

class FlutterPlayground extends StatelessWidget {

  const FlutterPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WeatherScreen(),
    );
  }
}