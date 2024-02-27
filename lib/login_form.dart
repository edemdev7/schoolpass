import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Nom d\'utilisateur'),
              validator: (value) {
                if (value == null || value.isEmpty) { // Null check for value
                  return 'Veuillez entrer votre nom d\'utilisateur';
                }
                return null;
              },
              onSaved: (value) {
                _username = value!; // Null assertion operator (!)
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Mot de passe'),
              validator: (value) {
                if (value == null || value.isEmpty) { // Null check for value
                  return 'Veuillez entrer votre mot de passe';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!; // Null assertion operator (!)
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState != null && _formKey.currentState!.validate()) { // Null check for currentState
                  _formKey.currentState!.save(); // Null check for currentState
                  // Envoyer les données de connexion pour vérification
                  print('Nom d\'utilisateur: $_username');
                  print('Mot de passe: $_password');
                  // Ici, vous pouvez ajouter la logique pour vérifier les informations d'identification
                }
              },
              child: Text('Se Connecter'),
            ),
          ],
        ),
      ),
    );
  }
}
