import 'package:flutter/material.dart';
import 'package:vita/quiz/models/category_model.dart';

import '../../../../quiz/presentation/views/widgets/quiz_category_widget.dart';

class QuizCategoriesListView extends StatelessWidget {
  const QuizCategoriesListView({
    super.key, required this.model,
  });
final CategoriesModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context,index)=>QuizCategory(model: model, index: index,),
        separatorBuilder: (context,index)=>const SizedBox(height: 3,),
        itemCount: model.triviaCategories!.length,
      ),
    );
  }
}
