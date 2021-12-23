import 'package:bfcai_hp/networkdep/Networktable.dart';
import 'package:flutter/material.dart';

import 'networkdep/lectable.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Networktable(),
    );
  }
}