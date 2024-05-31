import 'package:app/app/core/database/sqlite_adm_connection.dart';
import 'package:app/app/modules/auth/auth_modules.dart';
import 'package:app/app/modules/auth/login/login_controller.dart';
import 'package:app/app/modules/auth/login/login_page.dart';
import 'package:app/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List Provider',
      initialRoute: '/login',
      routes: {
        ...AuthModules().routers,
      },
      home: SplashPage(),
      theme: ThemeData(useMaterial3: false),
    );
  }
}
