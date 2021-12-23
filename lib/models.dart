import 'package:flutter/material.dart';
class Lec {
  String? lecname;
  String? doctor;
  String? date;
  String? startTime;
  bool? isdone;


  Lec({
    required this.lecname,
    required this.doctor,
    required this.date,
    required this.startTime,
    this.isdone,
  });


}
const Color myclr =Colors.blueGrey;
