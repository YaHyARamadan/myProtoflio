import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';


class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    super.key,
    required this.mediaQueryWidth,
    required this.mediaQueryHeight,
  });

  final double mediaQueryWidth;
  final double mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaQueryWidth * 0.65,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 35),
                child: RichText(
                  text: TextSpan(
                    text: 'I\'am YaHyA Ramadan\n',
                    style: TextThemes.interSize15Weight700
                        .copyWith(fontSize: 11.sp),
                    children: const [
                      TextSpan(text: 'Flutter'),
                      TextSpan(
                        text: ' Developer\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFB400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: CustomText(
                  text:
                      'I am currently studying Information Technology and\nhave developed a keen interest in Flutter. I began learning\nFlutter three months ago and have already completed several projects.\nI am passionate about expanding my skills and knowledge in\nmobile development and continuously seek opportunities to learn more.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff878787),
                    fontSize: 3.5.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: mediaQueryWidth * 0.07,
                    height: mediaQueryHeight * 0.04,
                    alignment: Alignment.center,
                    color: const Color(0xffFFB400),
                    child: Row(
                      children: [
                        SizedBox(width: mediaQueryWidth * 0.01),
                        CustomText(
                          text: "Hire Me",
                          style: TextThemes.interSize15Weight700
                              .copyWith(fontSize: 4.sp),
                        ),
                        Icon(Icons.arrow_forward_sharp, size: 4.5.sp),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: mediaQueryWidth * 0.05),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/img/7432c767-1743-4a63-be63-0c1e5e3546f9-removebg-preview.png",
              scale: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
