import 'package:dartz/dartz.dart';
import 'package:vita/quiz/models/category_model.dart';
import '../../core/errors/failures.dart';
import '../models/quiz_model.dart';

abstract class QuizRepo{
  Future<Either<Failure,CategoriesModel>> fetchQuizCategories();
  Future<Either<Failure,QuizModel>> fetchFullQuiz({int ? category, String ? level});
}