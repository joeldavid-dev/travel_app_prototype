import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/home/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: colorApp,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        accentColor: colorAcento,
        scaffoldBackgroundColor: colorApp,
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: 'Varela', bodyColor: colorLetras),
      ),
      home: HomeScreen(),
    );
  }
}
