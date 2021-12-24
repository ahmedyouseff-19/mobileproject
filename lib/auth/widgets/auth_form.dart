import 'package:bfcai_hp/auth/ui/authscreen.dart';
import 'package:flutter/material.dart';

import 'my_butten.dart';



class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {




  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Form(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    hintText: 'text@fci.bu.edu.eg',



                  ),
                ),
               const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20,),
                OriginalButton(
                  text: widget.authType==AuthType.login
                      ? 'Login'
                      :'Register',
                  onPressed: () {  },
                  textColor: Colors.white,
                  bcolor: Colors.blueGrey,

                ),
                const SizedBox(height: 10,),
                OriginalButton(
                  text:  widget.authType==AuthType.login
                      ?"Don't have an account ?"
                  :'Have an account ?',
                  onPressed: () {

                    if(widget.authType==AuthType.login)
                      Navigator.of(context).pushReplacementNamed('register');

                    else
                      Navigator.of(context).pushReplacementNamed('login');


                  },
                  textColor: Colors.white,
                  bcolor: Colors.blueGrey[500]!,

                ),

              ],
            ),
          ),

        ),
      ],
    );
  }
}
