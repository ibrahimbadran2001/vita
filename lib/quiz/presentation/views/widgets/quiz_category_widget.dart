import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class QuizCategory extends StatelessWidget {
  const QuizCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 50,
        decoration: myBoxShadow(context),
        child:  Center(
          child: Text(
            'general Knowledge',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
