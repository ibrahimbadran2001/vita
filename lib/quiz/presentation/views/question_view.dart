import 'package:flutter/material.dart';
import 'package:vita/quiz/presentation/views/quiz_view.dart';

import 'widgets/question_view_body.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildQuizAppBar(context),
      body: const QuestionViewBody(),
    );
  }
}
