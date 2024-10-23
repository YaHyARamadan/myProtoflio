import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';
import 'custom_text_field.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({
    super.key,
    required this.mediaQueryWidth,
    required this.mediaQueryHeight,
  });

  final double mediaQueryWidth;
  final double mediaQueryHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: mediaQueryWidth * 0.43,
        height: mediaQueryHeight * 0.8,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mediaQueryHeight * 0.02),
            const CustomTextField(
              title: 'Enter Your Full Name',
              maxLines: 1,
            ),
            const CustomTextField(
              title: 'Enter Your Email',
              maxLines: 1,
            ),
            const CustomTextField(
              title: 'Enter Your Subject',
              maxLines: 1,
            ),
            const CustomTextField(
              title: 'Enter Your Message',
              maxLines: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  width: mediaQueryWidth * 0.1,
                  height: mediaQueryHeight * 0.04,
                  alignment: Alignment.center,
                  color: const Color(0xffFFB400),
                  child: Row(
                    children: [
                      SizedBox(width: mediaQueryWidth * 0.01),
                      CustomText(
                        text: "Contact Me",
                        style:
                        TextThemes.interSize15Weight700.copyWith(
                            fontSize: 4.sp
                        ),
                      ),
                      Icon(Icons.arrow_forward_sharp,
                          size: 4.5.sp),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQueryHeight * 0.02),
          ],
        ));
  }
}
