import 'package:app/app/core/database/sqlite_connection_factory.dart';
import 'package:flutter/material.dart';

class SqliteAdmConnection with WidgetsBindingObserver {
  final connection = SqliteConnectionFactory();
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // TODO:
        break;
      case AppLifecycleState.inactive:
        connection.closeConnection();
        break;
      case AppLifecycleState.paused:
        connection.closeConnection();
        break;
      case AppLifecycleState.detached:
        connection.closeConnection();
        break;
      case AppLifecycleState.hidden:
        connection.closeConnection();
        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}
