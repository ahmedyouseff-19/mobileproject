import 'package:bfcai_hp/networkdep/sectable.dart';
import 'package:flutter/material.dart';

import 'lectable.dart';
import '../lec&sec_model/models.dart';
// ِCreated by Ahmed Youseff


class Networktable extends StatelessWidget {
  const Networktable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading:     Padding(
         padding: const EdgeInsets.all(8.0),
         child:
         Icon(
           Icons.table_chart,
           color: myclr,
         ),
       ) ,
        title: Center(
          child:
          Text('Netowork Table',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        ),
        backgroundColor: Colors.white,
        elevation: 10,


      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 200.0,
              horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                             Navigator.push(context,
                        MaterialPageRoute(
                           builder: (context)=> networksecScreen(),
                       ),
                             );


                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.table_chart,
                              color: myclr,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'lec',
                              style: TextStyle(
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
                          color:myclr,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=> networkSecScreen(),
                          ),
                        );

                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.table_chart,
                              color: myclr,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'sec',
                              style: TextStyle(
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
                          color:myclr,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );



  }
}
