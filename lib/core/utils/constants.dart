 import 'package:flutter/material.dart';

const myColor= Color(0xff4682B4);

List<String>subjects=['news','weather','health','quiz'];

 void navigateAndFinish(context,widget){
     Navigator.pushAndRemoveUntil(
         context,
         PageRouteBuilder(
           transitionDuration: const Duration(milliseconds: 500),
           pageBuilder: (context, animation, secondaryAnimation) => widget,
           transitionsBuilder: (context, animation, secondaryAnimation, child) {
             return FadeTransition(
               opacity: animation,
               child: child,
             );
           },
         ), (route) => false
     );
 }
 void navigateTo(BuildContext context, Widget widget) {
   Navigator.push(
     context,
     PageRouteBuilder(
       transitionDuration: const Duration(milliseconds: 500),
       pageBuilder: (context, animation, secondaryAnimation) => widget,
       transitionsBuilder: (context, animation, secondaryAnimation, child) {
         return FadeTransition(
           opacity: animation,
           child: child,
         );
       },
     ),
   );
 }
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