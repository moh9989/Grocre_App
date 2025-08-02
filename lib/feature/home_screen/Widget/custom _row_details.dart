import 'package:flutter/material.dart';
import 'package:grocre_app/core/resourses/color_manger.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';
import 'package:grocre_app/core/resourses/text_manger.dart';

class CustomRowDetails extends StatelessWidget {
  const CustomRowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  TextManger.fruits,
                  style: TextStyle(
                    fontSize: FontSize.fontSize16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  TextManger.seeAll,
                  style: TextStyle(
                    color: ColorManger.primaryColor,
                    fontSize: FontSize.fontSize14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
  }
}