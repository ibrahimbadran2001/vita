import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class MYCustomButton extends StatelessWidget {
  const MYCustomButton({
    super.key,
    required  this.onPress,
    this.width=double.infinity,
    this.height=50,
    this.gradientColors = const [Color.fromRGBO(249, 136, 31, 1), Color.fromRGBO(255, 119, 76, 1)],
    this.bgColor=myColor,
    required  this.text,
    this.radius = 20.0,
  });
  final double width;
  final double height;
  final Color bgColor;
  final List<Color> gradientColors;
  final double radius;
  final void Function() onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: bgColor,
          // gradient: LinearGradient(
          //   colors: gradientColors,
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          // ),
          borderRadius: BorderRadius.circular(radius)
      ),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
        ),
      ),
    );();
  }
}
