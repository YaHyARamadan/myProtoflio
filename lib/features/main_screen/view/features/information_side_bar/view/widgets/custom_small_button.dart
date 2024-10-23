import 'package:flutter/material.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({
    super.key,
    required this.imgPath,
    required this.scale,
  });

  final String imgPath;
  final double scale;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        width: mediaQuery * 0.02,
        height: mediaQuery * 0.02,
        decoration: BoxDecoration(
          color: const Color(0xffFFB400),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          imgPath,
          scale: scale,
        ),
      ),
    );
  }
}