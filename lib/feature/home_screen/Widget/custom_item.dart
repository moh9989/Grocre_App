import 'package:flutter/material.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.rate,
    required this.icon, required this.ontap,
  });
  final String name;
  final String image;
  final String price;
  final String rate;
  final Widget icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              color: Colors.grey.shade100,
              width: 160,
              height: 147,
              child: Image.asset(image),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(1),
                  shape: BoxShape.circle,
                ),
                child: icon,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          width: 60,
          child: Text(
            name,
            maxLines: 1,
            style: TextStyle(
              fontSize: FontSize.fontSize16,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(height: 8),

        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text(
              rate,
              style: TextStyle(
                fontSize: FontSize.fontSize12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),

        Text(
          "\$$price",
          style: TextStyle(
            fontSize: FontSize.fontSize14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
