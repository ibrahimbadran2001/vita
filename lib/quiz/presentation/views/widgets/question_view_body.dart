import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/home/presentation/views/home_view.dart';
import 'package:vita/quiz/presentation/manager/quiz/quiz_cubit.dart';
import 'package:vita/quiz/presentation/manager/quiz/quiz_states.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_cubit.dart';
import 'package:vita/quiz/presentation/views/widgets/my_custom_button.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../quiz_repos/quiz_repo_impl.dart';
import 'quiz_card_widget.dart';

class QuestionViewBody extends StatefulWidget {
  const QuestionViewBody({super.key});
  @override
  State<QuestionViewBody> createState() => _QuestionViewBodyState();
}

class _QuestionViewBodyState extends State<QuestionViewBody> {
  var quizController = PageController();
  bool isLast=false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>
      QuizCubit(
          getIt.
          get<QuizRepoImpl>(),
      )..fetchFullQuiz(
          category:QuizLevelsCubit.get(context).selectedCategory,
          level: QuizLevelsCubit.get(context).selectedLevel,
      ),
      child: BlocConsumer<QuizCubit,QuizStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          if(state is GetQuizSuccess){
            if(state.model.results!.length >=10 ){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    SizedBox(
                      height:  MediaQuery.sizeOf(context).height*0.6,
                      child: PageView.builder(
                        clipBehavior: Clip.none,
                        controller: quizController,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return QuizCardWidget(quizController: quizController, index: index, model: state.model,);
                        },
                      ),
                    ),
                    const SizedBox(height: 50,),
                    MYCustomButton(
                      onPress: (){
                        navigateAndFinish(context, const HomeView());
                      },
                      text: 'submit',
                    )
                  ],
                ),
              );
            }else{
              return const Center(child: Text('something went wrong ...'));
            }
          }else if(state is GetQuizError){
            return Center(child: Text(state.error.toString()));
          }else{
            return const Center(child: CircularProgressIndicator(color: myColor,));
          }
        },
      ),
    );
  }
}






