import 'package:app/app/app_widget.dart';
import 'package:app/app/core/database/sqlite_connection_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// This is responsable for keep only the main needed things
// The other will be keeped in their modules and only be created when needed

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    // Base struct of our Project
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => SqliteConnectionFactory(),
          lazy: false, // when create the create or update the DB instantly
        ),
      ],
      // Stateful wiget to inject dependencies
      child: const AppWidget(),
    );
  }
}
