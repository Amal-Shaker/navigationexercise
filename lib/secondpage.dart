import 'package:flutter/material.dart';

class ScondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("data"),
            onPressed: () {
              Navigator.of(context).pop('you are welcome');
            },
          ),
        ),
      ),
    );
  }
}
