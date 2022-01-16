import 'package:flutter/material.dart';
import 'package:nectar/screens/location.dart';
import 'package:nectar/screens/login.dart';
import 'package:nectar/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SignUp.path,
      routes: {
        Location.path: (ctx) => Location(),
        Login.path: (ctx) => Login(),
        SignUp.path: (ctx) => SignUp(),
      },
    );
  }
}
