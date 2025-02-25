import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/models/quiz_model.dart';
import 'package:vita/quiz/presentation/views/widgets/quiz_answers_list_view.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({
    super.key, required this.quizController, required this.index, required this.model,
  });
  final QuizModel model;
  final PageController quizController;
  final int index;
  List<String>getAnswers(){
    List<String> answers = [];
    answers.add(model.results![index].correctAnswer!);
      for (var item in model.results![index].incorrectAnswers!) {
        answers.add(item);
    }
      answers.shuffle(Random());
      print('$answers , correct: ${model.results![index].correctAnswer!}')    ;
      return answers;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.6,
      decoration: myBoxShadow(context,Theme.of(context).cardColor,null),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        model.results![index].category!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: myColor
                        )
                    ),
                    const SizedBox(height: 2,),
                    Text(
                        model.results![index].difficulty!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: myColor
                        ),
                    ),
                  ],
                ),
                Text(
                    '${index+1} of 10',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: myColor
                    )
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Text(
              model.results![index].question!,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.0
              ),
            ),
            const SizedBox(height: 15,),
            QuizAnswersListView(answers:getAnswers(),),
            const SizedBox(height: 10,),
            Container(
              decoration: myBoxShadow(context,Theme.of(context).cardColor,null),
              width: 60,
              height: 40,
              child: InkWell(
                  onTap: (){
                    quizController.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: myColor,
                  )
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}