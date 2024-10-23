import 'package:flutter/material.dart';

import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';




class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key, required this.imgPath, required this.projectName, required this.projectDescription,

  });

  final String imgPath;
  final String projectName;
  final String projectDescription;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      width: mediaQueryWidth * 0.2,
      height: mediaQueryHeight * 0.5,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: mediaQueryWidth * 0.2,
            height: mediaQueryHeight * 0.25,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
          ListTile(
            title: CustomText(
                text: projectName, style: TextThemes.sFProSize16Weight400),
            subtitle: CustomText(
                text:
                projectDescription,
                style: TextThemes.sFProSize16Weight400.copyWith(fontSize: 12)),
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
          OutlinedButton.icon(
            onPressed: () {},
            label: CustomText(
                text: "Learn More",
                style: TextThemes.interSize15Weight700
                    .copyWith(fontSize: 12, color: const Color(0xffFFB400))),
            icon: const Icon(
              Icons.arrow_forward_rounded,
              color: Color(0xffFFB400),
            ),
          )
        ],
      ),
    );
  }
}
