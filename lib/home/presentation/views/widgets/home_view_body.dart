import 'package:flutter/material.dart';
import 'package:vita/home/presentation/views/widgets/subjects_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SubjectsListView(),
    );
  }
}




