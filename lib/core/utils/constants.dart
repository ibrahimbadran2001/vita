 import 'package:flutter/material.dart';
const myColor= Color(0xff4682B4);
List<String>subjects=['news','weather','health','quiz'];
 void navigateAndFinish(context,widget) =>
     Navigator.pushAndRemoveUntil(
         context,
         MaterialPageRoute(builder: (context)=>widget),
             (route) => false);

 void navigateTo(BuildContext context,widget) =>
     Navigator.push(
       context,
       MaterialPageRoute(
           builder:(context)=>widget
       ),
     );
 BoxDecoration myBoxShadow(BuildContext context) {
   return BoxDecoration(
     color: Theme.of(context).cardColor,
     boxShadow: [
       BoxShadow(
         color: Theme.of(context).shadowColor,
         //color: 3// Shadow color
         spreadRadius: 1, // Spread radius
         blurRadius: 3, // Blur radius
         offset: Offset(0, 2), // Offset in x and y directions
       ),
     ],
     borderRadius: BorderRadius.circular(10),
     //color: Colors.white,
   );
 }