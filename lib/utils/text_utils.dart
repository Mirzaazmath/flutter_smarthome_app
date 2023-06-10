import 'package:flutter/material.dart';
class HeadingText extends StatelessWidget {
  final String text;
  final double? size;
  HeadingText({this.size,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(color: Colors.white,fontSize:size??14 ,fontWeight: FontWeight.bold),);
  }
}
