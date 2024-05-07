import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Column_of_pic_and_title extends StatelessWidget {
  final String? pic;
  final String? title;
  const Column_of_pic_and_title({
    this.pic,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: CircleAvatar(
            
            radius: 30,
            backgroundImage: AssetImage('$pic'),
          ),
        ),
       const   SizedBox(height:10)
        ,Text('$title')
      ],
    );
  }
}
