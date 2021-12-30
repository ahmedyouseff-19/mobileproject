import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:flutter/material.dart';
// ِCreated by Ahmed Youseff
class Level1 extends StatefulWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
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
                      .pushReplacementNamed('nl1');
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
                      .pushReplacementNamed('ml1');
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
                      .pushReplacementNamed('sl1');
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
