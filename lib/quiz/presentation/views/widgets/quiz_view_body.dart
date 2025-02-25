import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories/quiz_categories_cubit.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories/quiz_categories_states.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_cubit.dart';
import 'package:vita/quiz/presentation/views/question_view.dart';
import 'package:vita/quiz/presentation/views/widgets/my_custom_button.dart';
import 'package:vita/quiz/presentation/views/widgets/quiz_categories_list_view.dart';
import 'quiz_levels_list_view.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                  'Pick your Challenge !',
                style: Theme.of(context).textTheme.bodyLarge,
               ),
               TextButton(
                   onPressed: (){
                     QuizLevelsCubit.get(context).selectCategory(null,null);
                   },
                   child:  Row(
                     children: [
                       Text(
                           'Random',
                         style: Theme.of(context).textTheme.bodySmall!.copyWith(
                           color: myColor,
                           fontSize: 12
                         ),
                       ),
                       const SizedBox(width: 2,),
                       const Icon(
                           Icons.shuffle_on_outlined,
                         color: myColor,
                         size: 20,
                       ),
                     ],
                   ),
               )
             ],
           ),
          const SizedBox(height: 5),
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
                print('aaaaaaaa ${QuizLevelsCubit.get(context).selectedLevel}');
              },
              text: 'let\'s start',
          ),
        ],
      ),
    );
  }
}






