import 'package:app/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List Provider',
      home: SplashPage(),
      theme: ThemeData(useMaterial3: false),
    );
  }
}
