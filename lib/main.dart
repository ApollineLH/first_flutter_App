import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_1/screens/home/home.dart';

import 'screens/home/home.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), 
    );
  }
}

