import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:flutter/material.dart';
import '../../homepage.dart';
import '../../startpage.dart';


// ِCreated by mariam


List<Lec> lec=[
  Lec(
    doctor: 'Dr: Mohamed Taha',
    date: 'Saturday',
    lecname: 'network security',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Ezz',
    date: 'Saturday',
    lecname: 'cyber security',
    startTime: '12:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Hamada',
    date: 'Tuesday',
    lecname: 'Open source ',
    startTime: '09:00',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Fathy Al-Qazzaz',
    date: 'Tuesday',
    lecname: 'hide information',
    startTime: '11:15',
    isdone :false,
  ),
  Lec(
    doctor: 'Dr.Metwaly',
    date: 'Tuesday',
    lecname: 'Image Processing',
    startTime: '01:30',
    isdone :false,
  ),

];



class S4lec extends StatefulWidget {
  const S4lec({Key? key}) : super(key: key);

  @override
  _S4lecState createState() => _S4lecState();
}

class _S4lecState extends State<S4lec> {
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

                  fontSize: 21.0,
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
