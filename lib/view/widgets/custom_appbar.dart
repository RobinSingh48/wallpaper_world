import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String text1;
  String text2;
   CustomAppBar({Key? key,required this.text1,required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text: "$text1",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20)),
          TextSpan(text: " $text2",style: TextStyle(color: Colors.orangeAccent,fontSize: 18,fontWeight: FontWeight.bold)),
        ]
      )),
    );
  }
}
