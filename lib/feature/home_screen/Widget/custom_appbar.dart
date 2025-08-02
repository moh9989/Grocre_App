import 'package:flutter/material.dart';
import 'package:grocre_app/core/resourses/image_name_manger.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';
import 'package:grocre_app/core/resourses/text_manger.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            SvgPicture.asset(ImageName.bikeIcon),
            SizedBox(width: WidthSize.width10),
            Text(
              TextManger.titleAppBar,
              style: TextStyle(
                fontSize: FontSize.fontSize19,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: WidthSize.width16),
            SvgPicture.asset(
              ImageName.arrowDownIcon,
              width: WidthSize.width6,
              height: HeightSize.height12,
            ),
            Spacer(),
            SvgPicture.asset(
              ImageName.basketIcon,
              width: WidthSize.width18_5,
              height: HeightSize.height18_5,
            ),
          ],
        ),
      );
  }
}