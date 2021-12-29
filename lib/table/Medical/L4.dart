import 'package:bfcai_hp/auth/widgets/my_butten.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:bfcai_hp/networkdep/L1/lec1.dart';
import 'package:bfcai_hp/networkdep/L1/sec1.dart';
import 'package:bfcai_hp/networkdep/L3/lectable.dart';
import 'package:flutter/material.dart';
class ML4 extends StatefulWidget {
  const ML4({Key? key}) : super(key: key);

  @override
  _ML4State createState() => _ML4State();
}

class _ML4State extends State<ML4> {
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
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'lec G2',
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
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 1',
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
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 2',
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
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'sec 3',
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
              padding: const EdgeInsets.all(25.0),
              child: OriginalButton(
                text: 'Sec 4',
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
            SizedBox(height: 0,),


          ],



        ),
      ),

    );
  }
}
