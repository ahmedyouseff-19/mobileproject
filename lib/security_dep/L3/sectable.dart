import 'package:flutter/material.dart';

import '../../tablepage.dart';
import '../../lec&sec_model/models.dart';
import '../../startpage.dart';



List<Lec> sec=[
  Lec(
    doctor: 'Eng.Ashraf',
    date: 'Saturday',
    lecname: 'Algorithms',
    startTime: '11:15',
    isdone :false,

  ),
  Lec(
    doctor: 'Eng.Ibrahim',
    date: 'Saturday',
    lecname: 'File',
    startTime: '03:15',
    isdone :false,

  ),
  Lec(
    doctor: 'Eng.ahmed',
    date: 'Sunday',
    lecname: 'AI',
    startTime: '3:15',
    isdone :false,

  ),
  Lec(
    doctor: 'Eng.Ashraf',
    date: 'Monday',
    lecname: 'Introduction to digital forinsic',
    startTime: '2:15',
    isdone :false,

  ),
  Lec(
    doctor: 'Eng.Sheren',
    date: 'Tuesday',
    lecname: 'Database',
    startTime: '01:30',
    isdone :false,

  ),
  Lec(
    doctor: 'Eng.Ahmed Tawfik',
    date: 'Wednesday',
    lecname: 'Network',
    startTime: '11:15',
    isdone :false,

  ),



];

class S3Sec extends StatefulWidget {

  const S3Sec({Key? key}) : super(key: key);

  @override
  State<S3Sec> createState() => _network3SecScreenState();
}

class _network3SecScreenState extends State<S3Sec> {


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
          Text('Section Table',style: TextStyle(
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
              child: buildLecItem(sec[index])),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 50.0,
            ),
            child: SizedBox(height: 10,),
          ),
          itemCount: sec.length,
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

