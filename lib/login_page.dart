import 'package:flutter/material.dart';
import 'login_form.dart'; // Import LoginForm from separate file

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: LoginForm(),
    );
  }
}
