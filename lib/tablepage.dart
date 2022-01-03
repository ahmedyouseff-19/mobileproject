import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:bfcai_hp/levels/level_2.dart';
import 'package:bfcai_hp/levels/level_3.dart';
import 'package:bfcai_hp/levels/level_4.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'levels/level_1.dart';

// ِCreated by Ahmed Youseff
class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  int currentIndex = 0;
  List<Widget> levels = [
    Level1(),
    Level2(),
    Level3(),
    Level4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            setState(() {
              Navigator.of(context).pushReplacementNamed('home');
            });
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: myclr,
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Row(
            children: [
              Center(
                child: Image.asset(
                  'images/logo.png',
                  height: 50,
                  width: 70,
                ),
              ),
              Center(child: Text("BFCAI")),
            ],
          ),
        ),
      ),
      body: levels[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: myclr,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 18,
        elevation: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.looks_one,
              color: Colors.white,
            ),
            label: 'level 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.looks_two,
              color: Colors.white,
            ),
            label: 'level 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.looks_3,
              color: Colors.white,
            ),
            label: 'level 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.looks_4,
              color: Colors.white,
            ),
            label: 'level 4',
          ),
        ],
      ),
    );
  }
}
