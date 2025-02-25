import '../../../models/quiz_model.dart';

abstract class QuizStates{}
class QuizInitialState extends QuizStates{}
class GetQuizLoading extends QuizStates{}
class GetQuizSuccess extends QuizStates{
  final QuizModel model;
  GetQuizSuccess({required this.model});
}
class GetQuizError extends QuizStates{
  final String error;
  GetQuizError({required this.error});
}