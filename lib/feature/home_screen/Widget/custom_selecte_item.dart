import 'package:flutter/material.dart';

class CustomSelecteItem extends StatelessWidget {
  const CustomSelecteItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(image, width: 29, height: 24),
      ),
    );
  }
}
