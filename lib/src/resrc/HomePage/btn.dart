import 'package:flutter/material.dart';

class myBtn extends StatelessWidget {
  final String text;
  VoidCallback onPress;
  myBtn({
    super.key,
    required this.text,
    required this.onPress,});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      child: Text(text),
      color: Colors.tealAccent,

    );

  }
}
