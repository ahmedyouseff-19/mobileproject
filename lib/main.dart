import 'package:bfcai_hp/networkdep/Networktable.dart';
import 'package:flutter/material.dart';

import 'auth/ui/authscreen.dart';
import 'homepage.dart';
import 'networkdep/lectable.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme:ThemeData(
        inputDecorationTheme:InputDecorationTheme(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),

      ),
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      home:  const Homepage(),


      routes: {
        'login': (context) =>const AuthScreen(authType: AuthType.login),
        'register': (context) => const AuthScreen(authType: AuthType.register),
      },
    );
  }
}