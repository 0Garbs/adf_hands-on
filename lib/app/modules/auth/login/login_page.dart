import 'package:app/app/modules/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
    Provider.of<LoginController>(context);
       return Scaffold(
           appBar: AppBar(title: const Text('Login'),),
           body: Container(),
       );
  }
}