import 'package:flutter/material.dart';

import 'auth/widgets/my_butten.dart';
import 'lec&sec_model/models.dart';

// ِCreated by Ahmed Youseff

class Startpage extends StatelessWidget {
  const Startpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:myclr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'BFCAI   ',
          style: TextStyle(
            fontSize: 30,
              color: myclr,
            fontWeight: FontWeight.bold,
          ),),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(height: 20,),
            Hero(
              tag: 'logoAnimation',
              child: Image.asset(
                'images/logo.png',
                height: 300,
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OriginalButton(
                text: 'Get Started',
                bcolor: Colors.white,
                textColor: myclr,
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
