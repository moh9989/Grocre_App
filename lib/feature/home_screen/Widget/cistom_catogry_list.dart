import 'package:flutter/material.dart';
import 'package:grocre_app/core/resourses/color_manger.dart';
import 'package:grocre_app/core/resourses/content.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';

class CistomCatogryList extends StatelessWidget {
  const CistomCatogryList({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: WidthSize.width70,
          height: HeightSize.height70,
          decoration: BoxDecoration(
            color: ColorManger.grey100Color,
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(
            image,
            width: WidthSize.width43,
            height: HeightSize.height43,
            //fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: HeightSize.height12),
        SizedBox(
          width: WidthSize.width70,
          child: Text(
            name,
            style: TextStyle(
              fontSize: FontSize.fontSize12,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
