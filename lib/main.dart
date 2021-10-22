import 'package:flutter/material.dart';
import 'package:stor/screanes/product_screan.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'story ',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        accentColor: Colors.white,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
        const Locale('ar', 'AE'), // Spanish, no country code
      ],
      home:HomeScrean(),


    );
  }
}

