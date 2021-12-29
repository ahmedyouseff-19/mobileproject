import 'package:bfcai_hp/homepage.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:flutter/material.dart';

// ِCreated by mariam

List<Lec> lec=[
  Lec(
    doctor: 'Eng.Sheren',
    date: 'ٍTuesday',
    lecname: 'Database',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Gada',
    date: 'ٍTuesday',
    lecname: 'Geographic',
    startTime: '01:30',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Abdoalwhab',
    date: 'ٍWednesday',
    lecname: 'IS security',
    startTime: '03:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Noha',
    date: 'ٍThursday',
    lecname: 'Data mining',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Eng.Ahmad Uosry',
    date: 'ٍThursday',
    lecname: 'Signal Processing',
    startTime: '11:15',
    isdone :false,
  ),
];










class M4sec4 extends StatefulWidget {
  const M4sec4({Key? key}) : super(key: key);

  @override
  _M4sec4State createState() => _M4sec4State();
}

class _M4sec4State extends State<M4sec4> {
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
