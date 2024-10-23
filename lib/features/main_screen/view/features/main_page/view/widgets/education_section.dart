import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';


class EducationSection extends StatelessWidget {
  const EducationSection({
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
      height: mediaQueryHeight * 0.35,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 10, top: 0),
                child: Column(
                  children: [
                    SizedBox(height: mediaQueryHeight * 0.05),
                    CustomText(
                        text:
                        "Borg Al-Arab Technology\n             University",
                        style: TextStyle(
                            fontSize: 4.5.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: mediaQueryHeight * 0.01),
                    Row(
                      children: [
                        CustomText(
                            text: "Student",
                            style: TextThemes
                                .interSize14Weight600.copyWith(fontSize: 4.sp)),
                        SizedBox(width: mediaQueryWidth * 0.01),
                        Container(
                          width: mediaQueryWidth * 0.059,
                          height: mediaQueryHeight * 0.02,
                          color: const Color(0xffFFB400),
                          child:  Text(
                            " 2023-2027",
                            style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mediaQueryHeight * 0.01),
                  ],
                ),
              ),
              SizedBox(width: mediaQueryWidth * 0.05),
              Column(
                children: [
                  SizedBox(height: mediaQueryHeight * 0.05),
                  CustomText(
                      text:
                      "Bachelor of Information Technology",
                      style: TextStyle(
                          fontSize: 4.5.sp,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: mediaQueryHeight * 0.01),
                  CustomText(
                      text:
                      "The Bachelor of Information Technology (Software) program focuses on developing strong programming skills,\nsoftware development methodologies, and problem-solving techniques.\nStudents gain hands-on experience in designing, coding, testing, and maintaining software applications",
                      style: TextStyle(
                          fontSize: 2.8.sp,
                          fontWeight: FontWeight.w700)),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 30, right: 30, top: 20, bottom: 10),
            child: Divider(),
          ),
          Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 20, top: 0),
                child: Column(
                  children: [
                    SizedBox(height: mediaQueryHeight * 0.01),
                    CustomText(
                        text: "Flutter Course",
                        style: TextStyle(
                            fontSize: 4.5.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: mediaQueryHeight * 0.01),
                    Row(
                      children: [
                        CustomText(
                            text: "Student",
                            style: TextThemes
                                .interSize14Weight600.copyWith(fontSize: 4.sp)),
                        SizedBox(width: mediaQueryWidth * 0.01),
                        Container(
                          width: mediaQueryWidth * 0.07,
                          height: mediaQueryHeight * 0.02,
                          color: const Color(0xffFFB400),
                          child:  Text(
                            " 24/08-27/12",
                            style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mediaQueryHeight * 0.01),
                  ],
                ),
              ),
              SizedBox(width: mediaQueryWidth * 0.05),
              Column(
                children: [
                  SizedBox(height: mediaQueryHeight * 0.01),
                  CustomText(
                      text: "Certificate of Flutter",
                      style: TextStyle(
                          fontSize: 4.5.sp,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: mediaQueryHeight * 0.01),
                  CustomText(
                      text:
                      "The Flutter course provides a comprehensive introduction to mobile app development using the Flutter framework.\nStudents learn to build cross-platform apps for iOS and Android from a single codebase.\nThe course covers UI design, state management, and integrating backend services,\noffering hands-on experience in building real-world applications with Flutter and Dart",
                      style: TextStyle(
                          fontSize: 2.8.sp,
                          fontWeight: FontWeight.w700)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
