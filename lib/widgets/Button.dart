import 'package:flutter/material.dart';

class ButtonNumber extends StatelessWidget{
  final VoidCallback onPressed;
  final String text;

  ButtonNumber({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          minimumSize:  Size(200,60),
        )
    );
  }

}