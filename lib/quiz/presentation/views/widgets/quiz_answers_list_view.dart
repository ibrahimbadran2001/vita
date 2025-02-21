import 'package:flutter/material.dart';

import 'quiz_answer_widget.dart';

class QuizAnswersListView extends StatelessWidget {
  const QuizAnswersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return const QuizAnswer();
        },
        separatorBuilder: (context,index){
          return const SizedBox(height: 10,);
        },
        itemCount: 4,
      ),
    );
  }
}