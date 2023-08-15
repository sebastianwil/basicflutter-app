import 'package:flutter/material.dart';
import 'package:reto_app/design/themes.dart';
import 'package:reto_app/pages/home_page.dart';

class AppReto extends StatelessWidget{
  const AppReto({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      theme: AppThemes.defaultTheme,
      home: const HomePage(key: Key('home page')),
  );
  }

}