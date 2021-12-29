import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec1.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec2.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec3.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec4.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec5.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec6.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec7.dart';
import 'package:bfcai_hp/medical_dep/L3/M3sec8.dart';
import 'package:bfcai_hp/medical_dep/L3/lecG1.dart';
import 'package:bfcai_hp/medical_dep/L3/lecG2.dart';
import 'package:bfcai_hp/networkdep/L1/lec1.dart';
import 'package:bfcai_hp/networkdep/L1/sec1.dart';
import 'package:bfcai_hp/networkdep/L3/lectable.dart';
import 'package:flutter/material.dart';
class ML3 extends StatefulWidget {
  const ML3({Key? key}) : super(key: key);

  @override
  _ML3State createState() => _ML3State();
}

class _ML3State extends State<ML3> {
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 0,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'lec G1',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> MlecG1(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'lec G2',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> MlecG2(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 1',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec1(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 2',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec2(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 3',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec3(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 4',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec4(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 5',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec5(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 6',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec6(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 7',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec7(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 8',
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> M3sec8(),
                      ),
                    );
                  });

                },
                textColor: Colors.white,
                bcolor: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 0,),


          ],



        ),
      ),

    );
  }
}
