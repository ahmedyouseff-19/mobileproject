import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:flutter/material.dart';
class Level3 extends StatefulWidget {
  const Level3({Key? key}) : super(key: key);

  @override
  _Level3State createState() => _Level3State();
}

class _Level3State extends State<Level3> {
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
              text: 'Medical Dep',
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
        SizedBox(height: 80,),


      ],



    );
  }
}
