import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories_cubit.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories_states.dart';
import 'package:vita/quiz/presentation/views/question_view.dart';
import 'package:vita/quiz/presentation/views/widgets/my_custom_button.dart';
import 'package:vita/quiz/presentation/views/widgets/quiz_categories_list_view.dart';
import 'quiz_levels_list_view.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
              'Pick your Challenge !',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          BlocBuilder<QuizCategoriesCubit,QuizCategoriesStates>(
              builder: (context,state){
                if(state is GetQuizCategoriesSuccess){
                  return  QuizCategoriesListView(model: state.model,);
                }else if(state is GetQuizCategoriesError){
                  return Text(state.error.toString());
                }else{
                  return const Center(child: CircularProgressIndicator(color: myColor,));
                }

          }),
          const SizedBox(height: 20,),
           Text(
              'choose the level of quiz !',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 5,),
          const QuizLevelListView(),
          const SizedBox(height: 20,),
          MYCustomButton(
              onPress: (){
                navigateTo(context, const QuestionView());
              },
              text: 'let\'s start',
          ),
        ],
      ),
    );
  }
}






