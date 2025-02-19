import 'package:flutter/material.dart';
import 'package:vita/core/utils/images_data.dart';
import 'package:vita/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100.withOpacity(0.5),
        title: Image.asset(
            ImagesData.logo ,
          height:AppBar().preferredSize.height-5 ,
        ),
        centerTitle: true,
      ),
      body: const HomeViewBody(),
    );
  }
}
