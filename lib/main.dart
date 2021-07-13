import 'package:flutter/material.dart';
import 'package:formradiobutton/error.dart';
import 'package:formradiobutton/router/router.dart';
import 'package:formradiobutton/secondpage.dart';

import 'another.dart';
import 'home.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.router.navkey,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => UserForm(),
        // 'anotherpage': (context) => AnotherPage(),
        // 'secondpage': (context) => ScondPage()
      },
      // onGenerateRoute: (RouteSettings routestinges) {
      //   String name = routestinges.name;
      //   var arguements = routestinges.arguments;
      //   if (name == 'anotherpage') {
      //     return MaterialPageRoute(builder: (context) => AnotherPage());
      //   } else if (name == 'secondpage') {
      //     return MaterialPageRoute(builder: (context) => ScondPage());
      //   } else {
      //     return MaterialPageRoute(builder: (context) => ErrorPage());
      //   }
      //  },
      onUnknownRoute: (RouteSettings routesetting) {
        String name = routesetting.name;
        var arguements = routesetting.arguments;
        if (name == 'anotherpage') {
          return MaterialPageRoute(builder: (context) => AnotherPage());
        } else if (name == 'secondpage') {
          return MaterialPageRoute(builder: (context) => ScondPage());
        } else {
          return MaterialPageRoute(builder: (context) => ErrorPage());
        }
      },
    );
  }
}
