import 'package:flutter/material.dart';
import 'package:flutter_maps/mapView.dart';
import 'package:flutter_maps/startScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phanto-Phobi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/startScreen',
      routes: {
        '/startScreen': (context) => HomePageWidget(),
        '/mapView': (context) => MapView(),
      },
    );
  }
}
