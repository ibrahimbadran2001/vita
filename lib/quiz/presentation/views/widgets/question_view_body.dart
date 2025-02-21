import 'package:flutter/material.dart';

class QuestionViewBody extends StatelessWidget {
  const QuestionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('who is the best football player in the history?'),
        SizedBox(height: 20,),

      ],
    );
  }
}
