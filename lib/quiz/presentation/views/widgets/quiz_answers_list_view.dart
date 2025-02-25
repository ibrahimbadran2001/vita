import 'package:flutter/material.dart';
import 'quiz_answer_widget.dart';

class QuizAnswersListView extends StatelessWidget {
  const QuizAnswersListView({
    super.key, required this.answers,
  });
  final List<String> answers;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return QuizAnswer(answer: answers[index],);
        },
        separatorBuilder: (context,index){
          return const SizedBox(height: 10,);
        },
        itemCount: 4,
      ),
    );
  }
}