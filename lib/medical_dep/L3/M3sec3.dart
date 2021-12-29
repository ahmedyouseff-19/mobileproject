import 'package:bfcai_hp/homepage.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:flutter/material.dart';

// ِCreated by mariam



// ِCreated by mariam


List<Lec> lec=[
  Lec(
    doctor: 'Eng.Abdolah',
    date: 'ٍSuterday',
    lecname: 'Software engineeringk',
    startTime: '11:15',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Doaa',
    date: 'Monday',
    lecname: 'Differential equations',
    startTime: '01:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Mahamed Ebrahem',
    date: 'Wednesday',
    lecname: 'Differential equations',
    startTime: '01:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Noha',
    date: 'ٍMonday',
    lecname: 'Image Processing',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Mostafa abdolah',
    date: 'Tuesday',
    lecname: 'Systems design',
    startTime: '01:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Mai',
    date: 'ٍThursday',
    lecname: 'Operating System',
    startTime: '09:00',
    isdone :false,
  ),
];

class M3sec3 extends StatefulWidget {
  const M3sec3({Key? key}) : super(key: key);

  @override
  _M3sec3State createState() => _M3sec3State();
}

class _M3sec3State extends State<M3sec3> {
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
                builder: (context)=> HomePage(),
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
