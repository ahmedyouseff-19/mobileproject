import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:flutter/material.dart';

import '../../tablepage.dart';

// ِCreated by mariam


List<Lec> lec=[
  Lec(
    doctor: 'Dr.Ahmad Taha',
    date: 'Saturday',
    lecname: 'Programing 1',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Shaima',
    date: 'Saturday',
    lecname: 'Business',
    startTime: '04:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Rasha',
    date: 'Munday',
    lecname: 'Computer Architecture',
    startTime: '11:15',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Metwally',
    date: 'Tuesday',
    lecname: 'Discreate math',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Ahmad Hagag',
    date: 'Tuesday',
    lecname: 'Probability',
    startTime: '01:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Shadia',
    date: 'Wednesday',
    lecname: 'Network',
    startTime: '09:00',
    isdone :false,
  ),


];



class M2lec extends StatefulWidget {
  const M2lec({Key? key}) : super(key: key);

  @override
  _M2lecState createState() => _M2lecState();
}

class _M2lecState extends State<M2lec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Icon(
              Icons.table_chart,
              color: Colors.white,
            ),
          ) ,
        ],
        title: Center(
          child:
          Text('Lectures Table',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        backgroundColor: myclr,
        elevation: 10,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context)=> TablePage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ) ,

        ),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => Container(
              padding: EdgeInsetsDirectional.all(0.0),
              decoration: BoxDecoration(
                color: myclr,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: buildLecItem(lec[index])),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 50.0,
            ),
            child: SizedBox(height: 10,),
          ),
          itemCount: lec.length,
        ),
      ),
    );
  }
  Widget buildLecItem(Lec sec) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Column(
          children: [
            Text(
              '${sec.date}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 1.0,),
            Text(
              '${sec.startTime}',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),


        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(

            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${sec.lecname}',
                style: TextStyle(

                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${sec.doctor}',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),

            ],
          ),
        ),

        Checkbox(
          checkColor: Colors.white70,
          activeColor:Colors.red ,
          value:sec.isdone,
          onChanged: (value) {
            assert(value != null);
            setState(() {
              sec.isdone = value!;
            });
          },
        ),
      ],
    ),
  );
}
