import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../core/theme/text_theme.dart';
import 'widgets/custom_small_button.dart';
import 'widgets/linear_progress.dart';
import 'widgets/personal_detials.dart';

class InformationSideBar extends StatelessWidget {
  const InformationSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: mediaQueryWidth * 0.2,
      height: mediaQueryHeight,
      color: Colors.white,
      child: SizedBox(
        width: mediaQueryWidth * 0.16,
        child: Column(children: [
          SizedBox(height: mediaQueryHeight * 0.01),
          SizedBox(
            width: mediaQueryWidth * 0.12,
            height: mediaQueryWidth * 0.12,
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: ClipOval(
                child: Image.asset(
                  "assets/img/7432c767-1743-4a63-be63-0c1e5e3546f9-removebg-preview-modified.png",
                  fit: BoxFit.cover,
                  width: mediaQueryWidth * 0.18,
                  height: mediaQueryWidth * 0.18,
                ),
              ),
            ),
          ),
          SizedBox(height: mediaQueryHeight * 0.02),
          CustomText(
              text: "Yahya Ramadan",
              style: TextThemes.interSize15Weight700.copyWith(fontSize: 18)),
          CustomText(
              text: "Flutter Developer",
              style: TextThemes.sFProSize14Weight600
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 15)),
          SizedBox(height: mediaQueryHeight * 0.02),
          Row(
            children: [
              SizedBox(width: mediaQueryWidth * 0.01),
              const CustomSmallButton(
                imgPath: "assets/icons/facebook-app-symbol.png",
                scale: 35,
              ),
              SizedBox(width: mediaQueryWidth * 0.01),
              const CustomSmallButton(
                imgPath: "assets/icons/github.png",
                scale: 35,
              ),
              SizedBox(width: mediaQueryWidth * 0.01),
              const CustomSmallButton(
                imgPath: "assets/icons/linkedin-big-logo.png",
                scale: 35,
              ),
              SizedBox(width: mediaQueryWidth * 0.01),
              const CustomSmallButton(
                imgPath: "assets/icons/twitter.png",
                scale: 35,
              ),
              SizedBox(width: mediaQueryWidth * 0.01),
              const CustomSmallButton(
                imgPath: "assets/icons/instagram.png",
                scale: 35,
              )
            ],
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
          const Divider(), //divider
          SizedBox(height: mediaQueryHeight * 0.02),
          const PersonalDetials(
            width: 0.028,
            firstTitle: 'Age:',
            secondTitle: '19',
          ),
          const PersonalDetials(
            width: 0.06,
            firstTitle: 'Residence:',
            secondTitle: 'EG',
          ),
          PersonalDetials(
            width: 0.06,
            firstTitle: 'Freelance:',
            secondTitle: 'Available',
            secondStyle: TextThemes.nunito24size800weight
                .copyWith(fontSize: 4.sp, color: Colors.green[800]),
          ),
          const PersonalDetials(
            width: 0.055,
            firstTitle: 'Address:',
            secondTitle: 'Alex,Egypt',
          ),
          const Divider(), //divider
          SizedBox(height: mediaQueryHeight * 0.01),
          Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                  text: "Languages",
                  style: TextThemes.nunito24size800weight
                      .copyWith(fontSize: 5.sp))),
          SizedBox(height: mediaQueryHeight * 0.01),
          const LinearProgress(
            language: 'Arabic',
            progress: 1,
          ),
          const LinearProgress(
            language: 'English',
            progress: 0.7,
          ),
          const Divider(), //divider
          SizedBox(height: mediaQueryHeight * 0.01),
          Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                  text: "Skills",
                  style: TextThemes.nunito24size800weight
                      .copyWith(fontSize: 5.sp))),
          SizedBox(height: mediaQueryHeight * 0.01),
          const LinearProgress(
            language: 'OPP',
            progress: 0.85,
          ),
          const LinearProgress(
            language: 'Dart',
            progress: 1,
          ),
          const LinearProgress(
            language: 'Flutter',
            progress: 0.65,
          ),
          const LinearProgress(
            language: 'Provider ',
            progress: 1,
          ),
          const LinearProgress(
            language: 'Cubit',
            progress: 0.20,
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
        ]),
      ),
    );
  }
}
