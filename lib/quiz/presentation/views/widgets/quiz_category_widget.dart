import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/quiz/models/category_model.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_cubit.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_state.dart';

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
      child: InkWell(
        onTap: (){
          QuizLevelsCubit.get(context).selectCategory(model.triviaCategories![index].id!,index);
        },
        child: BlocBuilder<QuizLevelsCubit,QuizLevelsStates>(
            builder: (context,state){
              return Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: myBoxShadow(
                  context,
                  QuizLevelsCubit.get(context).selectedCategoryIndex==index
                      ? selectedContainerColor
                      :Theme.of(context).cardColor,
                    QuizLevelsCubit.get(context).selectedCategoryIndex==index?
                    Border.all(color: myColor):null
                ),
                child:  Center(
                  child: Text(
                    '${model.triviaCategories![index].name}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
