import 'package:bfcai_hp/startpage.dart';
import 'package:bfcai_hp/table/Medical/L1.dart';
import 'package:bfcai_hp/table/Medical/L2.dart';
import 'package:bfcai_hp/table/Medical/L3.dart';
import 'package:bfcai_hp/table/Medical/L4.dart';
import 'package:bfcai_hp/table/Network/L1.dart';
import 'package:bfcai_hp/table/Network/L2.dart';
import 'package:bfcai_hp/table/Network/L3.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


import 'auth/ui/authscreen.dart';

import 'homepage.dart';
import 'networkdep/L3/lectable.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home:  const Startpage(),


      routes: {
        'login': (context) =>const AuthScreen(authType: AuthType.login),
        'register': (context) => const AuthScreen(authType: AuthType.register),
        'home':(context)=>HomePage(),
        'nl3':(context)=>NL3(),
        'nl2':(context)=>NL2(),
        'nl1':(context)=>NL1(),
        'ml1':(context)=>ML1(),
        'ml2':(context)=>ML2(),
        'ml3':(context)=>ML3(),
        'ml4':(context)=>ML4(),
      },
    );
  }
}