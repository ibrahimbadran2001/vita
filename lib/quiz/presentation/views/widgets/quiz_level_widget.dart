import 'package:flutter/material.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories_cubit.dart';

class QuizLevelWidget extends StatelessWidget {
  const QuizLevelWidget({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: 100,
        height: 125,
        decoration: myBoxShadow(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              QuizCategoriesCubit.get(context).levelsImages[index],
              width: 65,
              height: 65,
            ),
            const SizedBox(height: 10,),
            Text(
                QuizCategoriesCubit.get(context).quizLevels[index],
                style: Theme.of(context).textTheme.bodySmall
            ),
          ],
        ),
      ),
    );
  }
}