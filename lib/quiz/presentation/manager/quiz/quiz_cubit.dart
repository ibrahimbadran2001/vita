import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/quiz/presentation/manager/quiz/quiz_states.dart';

import '../../../quiz_repos/quiz_repo.dart';

class QuizCubit extends Cubit<QuizStates> {
  QuizCubit(this.quizRepo) : super(QuizInitialState());

  static QuizCubit get(context) => BlocProvider.of(context);
  QuizRepo quizRepo;

  Future<void> fetchFullQuiz({int? category, String? level}) async {
    emit(GetQuizLoading());
    var result = await quizRepo.fetchFullQuiz(category: category, level: level);
    result.fold((failure) {
      emit(GetQuizError(error: failure.errMessage,));
    },
            (model) {
          emit(GetQuizSuccess(model: model));
        });
  }
}