import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_cubit.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_state.dart';

class QuizLevelWidget extends StatelessWidget {
  const QuizLevelWidget({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: BlocBuilder<QuizLevelsCubit,QuizLevelsStates>(
          builder: (context,state){
            return InkWell(
              onTap: (){
                QuizLevelsCubit.get(context).
                selectLevel(
                    QuizLevelsCubit.get(context).quizLevels[index].toLowerCase(),
                    index,
                );
              },
              child: Container(
                width: 100,
                height: 125,
                decoration: myBoxShadow(
                    context,
                    QuizLevelsCubit.get(context).selectedLevelIndex==index
                        ?selectedContainerColor
                        :Theme.of(context).cardColor,
                    QuizLevelsCubit.get(context).selectedLevelIndex==index?
                        Border.all(color: myColor):null
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      QuizLevelsCubit.get(context).levelsImages[index],
                      width: 65,
                      height: 65,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                        QuizLevelsCubit.get(context).quizLevels[index],
                        style: Theme.of(context).textTheme.bodySmall
                    ),
                  ],
                ),
              ),
            );
          },
      ),
    );
  }
}