import 'package:flutter/material.dart';
import 'package:vita/quiz/presentation/views/widgets/quiz_view_body.dart';

import '../../../core/utils/images_data.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100.withOpacity(0.5),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            ImagesData.logo ,
          ),
        ),
        title: Text(
            'Vita Quiz',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 20,
          ),
        ),

        centerTitle: true,
      ),
      body: const QuizViewBody(),
    );
  }
}
