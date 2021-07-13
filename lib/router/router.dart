import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();
  static AppRouter router = AppRouter._();
  GlobalKey<NavigatorState> navkey = GlobalKey<NavigatorState>();
  pushFunction(Widget widget) {
    navkey.currentState.push(MaterialPageRoute(builder: (context) => widget));
  }

  pushNamedFunction(String widget) {
    navkey.currentState.pushNamed(widget);
  }
}
