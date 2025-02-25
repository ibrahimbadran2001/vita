import 'package:flutter/material.dart';
class QuizAnswer extends StatelessWidget {
  const QuizAnswer({
    super.key, required this.answer,
  });
final String answer;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          answer,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}