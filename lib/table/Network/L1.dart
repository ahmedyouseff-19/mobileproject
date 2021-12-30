import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:bfcai_hp/networkdep/L1/lec1.dart';
import 'package:bfcai_hp/networkdep/L1/sec1.dart';
import 'package:flutter/material.dart';
class NL1 extends StatefulWidget {
  const NL1({Key? key}) : super(key: key);

  @override
  _NL1State createState() => _NL1State();
}

class _NL1State extends State<NL1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          color: Colors.white, onPressed: () {
          setState(() {
            Navigator.of(context)
                .pushReplacementNamed('home');
          });
        },
          icon: Icon(Icons.arrow_back,),
        ),


        backgroundColor: myclr,
        title:  Padding(
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
      body:  Column(
        children: [
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'lec',
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=> network1lec(),
                    ),
                  );
                });

              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: OriginalButton(
              text: 'Sec',
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=> network1sec(),
                    ),
                  );
                });

              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 80,),


        ],



      ),

    );
  }
}