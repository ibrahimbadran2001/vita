import 'package:vita/quiz/presentation/manager/quiz_categories_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/quiz/quiz_repos/quiz_repo.dart';

class QuizCategoriesCubit extends Cubit<QuizCategoriesStates> {
  QuizCategoriesCubit(this.quizRepo) : super(QuizCategoriesInitialState());
  static QuizCategoriesCubit get(context) => BlocProvider.of(context);
  QuizRepo quizRepo;
  Future<void> fetchQuizCategories()async{
    emit(GetQuizCategoriesLoading());
    var result= await quizRepo.fetchQuizCategories();
    result.fold((failure){
      emit(GetQuizCategoriesError( error: failure.errMessage,));
    },
            (model){
          emit(GetQuizCategoriesSuccess(model: model));
        });
  }
  List<String> quizLevels = ['Random', 'Easy', 'Medium','Hard'];
  List<String> levelsImages=[
    'assets/images/random.png',
    'assets/images/easy.png',
    'assets/images/medium.png',
    'assets/images/hard.png',
  ];
}