import 'package:bfcai_hp/auth/widgets/auth_form.dart';
import 'package:bfcai_hp/lec&sec_model/models.dart';
import 'package:flutter/material.dart';

enum AuthType { login, register }
class AuthScreen extends StatelessWidget {
    final AuthType authType;


  const AuthScreen({Key? key,required this.authType }) : super(key: key);


  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: myclr,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 100),
                    Text('Hello!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Image.asset('images/logo.png',
                      height: 200,
                      width: 500,
                    ),
                  ],
                ),

              ],
            ),

            AuthForm(authType: authType,),

          ],

        ),
      ),
    );
  }
}
