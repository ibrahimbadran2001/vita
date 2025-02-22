import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vita/core/utils/api_service.dart';
import 'package:vita/quiz/quiz_repos/quiz_repo_impl.dart';

final getIt= GetIt.instance;

void setUp(){
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<QuizRepoImpl>(
    QuizRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );
}