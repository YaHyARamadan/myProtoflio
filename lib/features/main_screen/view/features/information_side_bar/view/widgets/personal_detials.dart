import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';
class PersonalDetials extends StatelessWidget {
  const PersonalDetials({
    super.key,
    required this.width,

    required this.firstTitle,
    required this.secondTitle, this.firstStyle, this.secondStyle,
  });

  final double width;
  final String firstTitle;
  final String secondTitle;
  final TextStyle? firstStyle;
  final TextStyle? secondStyle;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: mediaQueryWidth * width,
            height: mediaQueryHeight * 0.028,
            alignment: Alignment.center,
            color: const Color(0xffFFB400),
            child:  CustomText(
                text: firstTitle,
                style: firstStyle ?? TextThemes.nunito24size800weight.copyWith(fontSize: 4.sp,fontWeight: FontWeight.w500)),
          ),
          CustomText(
              text: secondTitle,
              style: secondStyle ?? TextThemes.nunito24size800weight.copyWith(fontSize: 4.sp,fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
