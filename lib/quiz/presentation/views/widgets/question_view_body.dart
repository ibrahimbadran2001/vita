import 'package:flutter/material.dart';
import 'package:vita/core/utils/constants.dart';
import 'package:vita/home/presentation/views/home_view.dart';
import 'package:vita/quiz/presentation/views/widgets/my_custom_button.dart';


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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          SizedBox(
            height:  MediaQuery.sizeOf(context).height*0.58,
            child: PageView.builder(
              clipBehavior: Clip.none,
              controller: quizController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context,index){
                  return QuizCardWidget(quizController: quizController, index: index,);
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
  }
}






