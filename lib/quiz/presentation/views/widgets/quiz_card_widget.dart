import 'package:flutter/material.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/presentation/views/widgets/quiz_answers_list_view.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({
    super.key, required this.quizController, required this.index,
  });
  final PageController quizController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.58,
      decoration: myBoxShadow(context),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '${index+1} of 10',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: myColor
                )
            ),
            const SizedBox(height: 10,),
            Text(
              'who is the best football player in the history?',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.0
              ),
            ),
            const SizedBox(height: 15,),
            const QuizAnswersListView(),
            const SizedBox(height: 10,),
            Container(
              decoration: myBoxShadow(context),
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