import 'package:flutter/material.dart';

class CustomDavinder extends StatelessWidget {
  const CustomDavinder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    width: 1.5,
                    height: 33,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  );
  }
}