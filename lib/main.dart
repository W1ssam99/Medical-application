import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/app_home.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white, 
      statusBarIconBrightness: Brightness.dark,
      
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}
