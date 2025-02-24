import 'package:flutter/material.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context,widget) {
        return SlideTransition(
          position: slidingAnimation,
          child:  const Text(
            'a holistic view of daily life',
            textAlign: TextAlign.center,
          ),
        );
      }, animation: slidingAnimation,
    );
  }
}
