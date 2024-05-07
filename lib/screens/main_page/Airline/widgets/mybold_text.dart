
import 'package:flutter/material.dart';

class My_Text extends StatelessWidget {
  final String? text;
  const My_Text({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
