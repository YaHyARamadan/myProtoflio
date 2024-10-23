import 'package:flutter/material.dart';

import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';


class SkillContainer extends StatelessWidget {
  const SkillContainer({
    super.key, required this.skill,

  });

 final String skill;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          width:mediaQueryWidth * 0.1 ,
          height: mediaQueryHeight * 0.05,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffFFB400),
          ),
          child: CustomText(text: skill, style: TextThemes.sFProSize14Weight600)
      ),
    );
  }
}