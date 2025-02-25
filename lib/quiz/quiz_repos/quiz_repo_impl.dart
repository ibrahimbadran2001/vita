import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:vita/core/errors/failures.dart';
import 'package:vita/core/utils/api_service.dart';
import 'package:vita/quiz/models/category_model.dart';
import 'package:vita/quiz/models/quiz_model.dart';
import 'package:vita/quiz/quiz_repos/quiz_repo.dart';

class QuizRepoImpl implements QuizRepo {
  final ApiService apiService;

  QuizRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, CategoriesModel>> fetchQuizCategories() async {
    try {
      var data = await apiService.get(
        baseUrl: ApiService.quizBaseUrl,
        endPoint: 'api_category.php',
      );
      var categories = CategoriesModel.fromJson(data);
      return Right(categories);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString(),));
      }
    }
  }

  @override
  Future<Either<Failure, QuizModel>> fetchFullQuiz({int ? category , String ? level}) async {
    try {
      var data = await apiService.get(
        baseUrl: ApiService.quizBaseUrl,
        endPoint:
        category!=null && level!=null?
        'api.php?amount=10&category=$category&difficulty=$level&type=multiple'
        : category==null&&level==null?'api.php?amount=10&type=multiple'
            :category==null&&level!=null?'api.php?amount=10&type=multiple&difficulty=$level'
              :'api.php?amount=10&type=multiple&category=$category',
      );
      var quiz = QuizModel.fromJson(data);
      return Right(quiz);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString(),));
      }
    }
  }
}