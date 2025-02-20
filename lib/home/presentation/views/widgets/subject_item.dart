import 'package:flutter/material.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({
    super.key, required this.image, required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 185,
            child: AspectRatio(
              aspectRatio: 4/2.1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(text),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}