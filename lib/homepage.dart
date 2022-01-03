import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'lec&sec_model/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0 ,left: 20.0,right: 20.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .pushReplacementNamed('table');

                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.table_view,
                            size: 30,
                          color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            ' Table',
                            style: TextStyle(
                              color: Colors.white,
                            fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: myclr,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 90.0 ,left: 20.0,right: 20.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: ()  async {
                      await FirebaseAuth.instance.signOut();

                      setState(() {
                        Navigator.of(context).pushReplacementNamed('login');
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.exit_to_app,
                            size: 30,
                            color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'LOG OUT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: myclr,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],

      ),


    );
  }
}
