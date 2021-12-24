import 'package:flutter/material.dart';

import 'auth/widgets/my_butten.dart';
import 'models.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(

        children: [
          Center(
              child: OriginalButton(
                bcolor: myclr,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
                text: 'test',

              ),
          ),
        ],
      ),
    );
  }
}
