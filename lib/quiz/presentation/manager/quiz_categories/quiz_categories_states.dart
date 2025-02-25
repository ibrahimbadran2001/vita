import 'package:vita/quiz/models/category_model.dart';

abstract class QuizCategoriesStates{}
class QuizCategoriesInitialState extends QuizCategoriesStates{}
class GetQuizCategoriesLoading extends QuizCategoriesStates{}
class GetQuizCategoriesSuccess extends QuizCategoriesStates{
  final CategoriesModel model;
  GetQuizCategoriesSuccess({required this.model});
}
class GetQuizCategoriesError extends QuizCategoriesStates{
  final String error;
  GetQuizCategoriesError({required this.error});
}
