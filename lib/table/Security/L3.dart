import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:bfcai_hp/networkdep/L3/lectable.dart';
import 'package:bfcai_hp/networkdep/L3/sectable.dart';
import 'package:bfcai_hp/security_dep/L3/lectable.dart';
import 'package:bfcai_hp/security_dep/L3/sectable.dart';
import 'package:flutter/material.dart';
class SL3 extends StatefulWidget {
  const SL3({Key? key}) : super(key: key);

  @override
  _SL3State createState() => _SL3State();
}

class _SL3State extends State<SL3> {
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
                      builder: (context)=> S3Lec(),
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
                      builder: (context)=> S3Sec(),
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
