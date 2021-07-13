import 'package:flutter/material.dart';

class FormUI extends StatefulWidget {
  @override
  _FormUIState createState() => _FormUIState();
}

class _FormUIState extends State<FormUI> {
  String email;
  String password;
  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  saveForm() {
    formkey.currentState.save();
  }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (String value) {
                  setEmail(value);
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                  onSaved: (String value) {
                    setPassword(value);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'password',
                      fillColor: Colors.blue.withOpacity(0.2),
                      filled: true)),
            ),
          ],
        ),
      ),
    );
  }
}
