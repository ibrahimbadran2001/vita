import 'package:flutter/material.dart';
import 'package:vita/quiz/models/category_model.dart';

import '../../../../core/utils/constants.dart';

class QuizCategory extends StatelessWidget {
  const QuizCategory({
    super.key, required this.model, required this.index,
  });
final CategoriesModel model;
final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 50,
        decoration: myBoxShadow(context),
        child:  Center(
          child: Text(
            '${model.triviaCategories![index].name}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
