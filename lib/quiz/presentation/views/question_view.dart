import 'package:flutter/material.dart';

import 'widgets/question_view_body.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuestionViewBody(),
    );
  }
}
