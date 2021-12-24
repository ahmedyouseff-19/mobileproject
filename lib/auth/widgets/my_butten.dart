import 'package:flutter/material.dart';

class OriginalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bcolor;
  final Color textColor;

  const OriginalButton({Key? key, required this.text, required this.onPressed, required this.bcolor, required this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
       style: ElevatedButton.styleFrom(
         maximumSize: Size(280, 80),
         shadowColor: bcolor,
         primary: bcolor,
       ),
       onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        ),

      ),
    );
  }
}