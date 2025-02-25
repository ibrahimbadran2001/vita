import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/quiz/presentation/manager/quiz_levels_cubit/quiz_levels_state.dart';

class QuizLevelsCubit extends Cubit<QuizLevelsStates> {
  QuizLevelsCubit() : super(QuizLevelsInitialState());
  static QuizLevelsCubit get(context) => BlocProvider.of(context);
  List<String> quizLevels = ['Random', 'Easy', 'Medium','Hard'];
  List<String> levelsImages=[
    'assets/images/random.png',
    'assets/images/easy.png',
    'assets/images/medium.png',
    'assets/images/hard.png',
  ];
  String ? selectedLevel;
  int selectedLevelIndex=0;
  void selectLevel(String level,int index){
    if(level!='random'){
      selectedLevel=level;
      selectedLevelIndex=index;
      print('level is : $selectedLevel');
      print('selected level index is : $selectedLevelIndex');
      emit(ChangeSelectedLevel());
    }else{
      selectedLevel=null;
      selectedLevelIndex=index;
      print('level is : $selectedLevel');
      print('selected level index is : $selectedLevelIndex');
      emit(ChangeSelectedLevel());
    }
  }
  int ? selectedCategory;
  int ? selectedCategoryIndex;
  void selectCategory(int ? category,int ? index){
    selectedCategory=category;
    selectedCategoryIndex=index;
    print('category is : $category');
    emit(ChangeCategoryState());
  }
}