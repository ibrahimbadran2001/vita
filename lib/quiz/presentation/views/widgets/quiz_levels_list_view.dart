import 'package:flutter/material.dart';

import 'package:vita/quiz/presentation/views/widgets/quiz_level_widget.dart';

class QuizLevelListView extends StatelessWidget {
  const QuizLevelListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>QuizLevelWidget(index: index,),
          separatorBuilder: (context,index)=>const SizedBox(width: 8,),
          itemCount: 4
      ),
    );
  }
}
