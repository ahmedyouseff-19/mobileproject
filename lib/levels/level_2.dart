import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:flutter/material.dart';
class Level2 extends StatefulWidget {
  const Level2({Key? key}) : super(key: key);

  @override
  _Level2State createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'Network Dep',
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pushReplacementNamed('nl2');
                });

              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
        ),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'Medical Dep',
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pushReplacementNamed('ml2');
                });

              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
        ),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'Security Dep',
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pushReplacementNamed('Networktable');
                });

              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
        ),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'General Dep',
              onPressed: () {},
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
        ),
        SizedBox(height: 80,),


      ],



    );
  }
}
