import 'package:flutter/material.dart';
import 'package:vita/core/utils/constants.dart';

import '../../../../core/utils/images_data.dart';

class QuizLevelWidget extends StatelessWidget {
  const QuizLevelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: 100,
        height: 125,
        decoration: myBoxShadow(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagesData.easy,
              width: 65,
              height: 65,
            ),
            const SizedBox(height: 10,),
            Text(
                'Easy Level',
                style: Theme.of(context).textTheme.bodySmall
            ),
          ],
        ),
      ),
    );
  }
}