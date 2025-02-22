import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita/core/utils/service_locator.dart';
import 'package:vita/quiz/presentation/manager/quiz_categories_cubit.dart';
import 'package:vita/quiz/quiz_repos/quiz_repo_impl.dart';
import 'package:vita/spalsh/presentation/views/splash_view.dart';
import 'core/utils/observer.dart';
import 'core/utils/themes.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>QuizCategoriesCubit(getIt.get<QuizRepoImpl>())..fetchQuizCategories()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        home:  const SplashView(),
      ),
    );
  }
}
