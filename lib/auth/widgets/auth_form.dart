import 'package:bfcai_hp/auth/ui/authscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'my_butten.dart';
// ِCreated by Ahmed Youseff

class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              onChanged: (value) => _email = value,
              validator: (value) =>
                  value!.isEmpty ? 'You Must Enter A Valid Email ' : null,
              decoration: const InputDecoration(
                labelText: 'Enter your Email',
                hintText: 'text@fci.bu.edu.eg',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              onChanged: (value) => _password = value,
              validator: (value) => value!.length <= 6
                  ? ' Password Must be At lest 6 Character '
                  : null,
              decoration: const InputDecoration(
                labelText: 'Enter your Password',
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            OriginalButton(
              text: widget.authType == AuthType.login ? 'Login' : 'Register',
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (widget.authType == AuthType.login) {
                    //login auth
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _email, password: _password);

                      setState(() {
                        Navigator.of(context)
                            .pushReplacementNamed('Networktable');
                      });
                    } catch (err) {
                      setState(() {
                        Fluttertoast.showToast(
                          msg: 'This User not found',
                          fontSize: 30,
                          textColor: Colors.red,
                        );
                      });
                    }
                  } else {
                    try {
                      //register auth
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _email, password: _password);
                      setState(() {
                        Navigator.of(context).pushReplacementNamed('login');
                      });
                    } catch (err) {
                      setState(() {
                        Fluttertoast.showToast(
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          textColor: Colors.red,
                          msg: 'This User Already found',
                          fontSize: 30,

                        );
                      });
                    }
                  }
                }
              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 10,
            ),
            OriginalButton(
              text: widget.authType == AuthType.login
                  ? "Don't have an account ?"
                  : 'Have an account ?',
              onPressed: () {
                if (widget.authType == AuthType.login) {
                  Navigator.of(context).pushReplacementNamed('register');
                } else {
                  Navigator.of(context).pushReplacementNamed('login');
                }
              },
              textColor: Colors.white,
              bcolor: Colors.blueGrey[500]!,
            ),
          ],
        ),
      ),
    );
  }
}
