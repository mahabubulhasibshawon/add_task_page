import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final String image;
  final String text;
  const BtnWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    // responsive height and width
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // Calculate dynamic font size
    double fontSize = width * 0.03;
    return Container(
      padding: EdgeInsets.all(height * .01),
      margin: EdgeInsets.only(right: width * .01),
      height: height * .05,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, fit: BoxFit.fitHeight,color: Colors.grey.shade500,),
          Text(text, style: TextStyle(fontSize: fontSize, color: Colors.grey.shade500))
        ],
      ),
    );
  }
}
