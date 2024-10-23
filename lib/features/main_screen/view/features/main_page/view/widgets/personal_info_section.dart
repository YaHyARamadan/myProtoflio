import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({
    super.key,
    required this.mediaQueryWidth,
    required this.mediaQueryHeight,
  });

  final double mediaQueryWidth;
  final double mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: mediaQueryWidth * 0.2,
            height: mediaQueryHeight * 0.2,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: mediaQueryHeight * 0.01),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFB400),
                      borderRadius:
                      BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      "assets/icons/map.png",
                      scale: 20,
                    ),
                  ),
                  ListTile(
                    title: CustomText(
                        text: "Country:",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                    trailing: CustomText(
                        text: "Egypt",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                  ),
                  SizedBox(height: mediaQueryHeight * 0.01),
                  ListTile(
                    title: CustomText(
                        text: "City:",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                    trailing: CustomText(
                        text: "Alexandria",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                  ),
                ],
              ),
            )),
        SizedBox(height: mediaQueryHeight * 0.1),
        Container(
            width: mediaQueryWidth * 0.2,
            height: mediaQueryHeight * 0.2,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: mediaQueryHeight * 0.01),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFB400),
                      borderRadius:
                      BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      "assets/icons/mail (1).png",
                      scale: 20,
                    ),
                  ),
                  ListTile(
                    title: CustomText(
                        text: "Email:",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                    trailing: CustomText(
                        text: "yhyyrmdan06@gmail.com",
                        style: TextThemes
                            .sFProSize14Weight600
                            .copyWith(fontSize: 3.5.sp)),
                  ),
                  SizedBox(height: mediaQueryHeight * 0.01),
                  ListTile(
                    title: CustomText(
                        text: "Linkedin:",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                    trailing: CustomText(
                        text: "Yahya Ramadan",
                        style: TextThemes
                            .sFProSize14Weight600.copyWith(fontSize: 4.sp)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
