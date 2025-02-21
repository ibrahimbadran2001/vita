import 'package:flutter/material.dart';
import 'package:vita/home/presentation/views/widgets/subject_item.dart';
import 'package:vita/quiz/presentation/views/quiz_view.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/images_data.dart';

class SubjectsListView extends StatelessWidget {
  const SubjectsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index){
        return FractionallySizedBox(
          widthFactor: 0.85,
          child: SubjectItem(
            image: ImagesData.images[index],
            text: subjects[index],
            onTap:() {
              navigateTo(context, QuizView());
            },
          ),
        );
      },
      separatorBuilder: (context,index){
        return const SizedBox(height: 10,);
      },
      itemCount: 4,
    );
  }
}