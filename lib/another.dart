import 'package:flutter/material.dart';
import 'package:formradiobutton/router/router.dart';
import 'package:formradiobutton/secondpage.dart';

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("data"),
            onPressed: () {
              AppRouter.router.pushFunction(ScondPage());
            },
            //  Navigator.of(context).pushNamed('ssss');
          ),
        ),
      ),
    );
  }
}
