import 'package:flutter/material.dart';
import 'home.dart';


class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    title: 'My Flutter App',
    home: Home(),
    theme: new ThemeData(
      primaryColor: Colors.white
    ),
   );
 }
}

void main() {
  runApp(App());
}
