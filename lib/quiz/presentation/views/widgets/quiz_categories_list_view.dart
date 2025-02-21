import 'package:flutter/material.dart';

import '../../../../quiz/presentation/views/widgets/quiz_category_widget.dart';

class QuizCategoriesListView extends StatelessWidget {
  const QuizCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context,index)=>const QuizCategory(),
        separatorBuilder: (context,index)=>const SizedBox(height: 3,),
        itemCount: 20,
      ),
    );
  }
}
