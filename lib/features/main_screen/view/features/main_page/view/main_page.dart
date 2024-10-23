import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_protfolio/features/main_screen/view/features/main_page/view/widgets/education_section.dart';
import 'package:my_protfolio/features/main_screen/view/features/main_page/view/widgets/personal_info_section.dart';
import 'package:my_protfolio/features/main_screen/view/features/main_page/view/widgets/project_container.dart';
import 'package:my_protfolio/features/main_screen/view/features/main_page/view/widgets/skill_container.dart';
import 'package:my_protfolio/features/main_screen/view/features/main_page/view/widgets/welcome_screen.dart';
import 'package:provider/provider.dart';
import '../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../core/theme/text_theme.dart';
import '../../../../view_model/navigate_button_provider.dart';
import 'widgets/contact_me_section.dart';


class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var navigatorProvider = Provider.of<NavigateButtonProvider>(context);
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      width: mediaQueryWidth * 0.73,
      alignment: Alignment.center,
      child: SizedBox(
        width: mediaQueryWidth * 0.65,
        child: ListView(
          controller: navigatorProvider.scrollController,
          children: [
            WelcomeContainer(
                mediaQueryWidth: mediaQueryWidth,
                mediaQueryHeight: mediaQueryHeight),
            SizedBox(height: mediaQueryHeight * 0.2),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "My Skills",
                style: TextThemes.sFProSize14Weight600.copyWith(fontSize: 9.sp),
              ),
            ),
            SizedBox(height: mediaQueryHeight * 0.05),
            Row(
              children: [
                SizedBox(width: mediaQueryWidth * 0.05),
                const SkillContainer(skill: "Dart"),
                const SkillContainer(skill: "OOP"),
                const SkillContainer(skill: "Provider"),
                const SkillContainer(skill: "Cubit"),
              ],
            ),
            const Row(
              children: [
                SkillContainer(skill: "Hive LDB"),
                SkillContainer(skill: "ResetApi"),
                SkillContainer(skill: "Clean Arc"),
                SkillContainer(skill: "Java"),
              ],
            ),
            Row(
              children: [
                SizedBox(width: mediaQueryWidth * 0.05),
                const SkillContainer(skill: "C++"),
                const SkillContainer(skill: "C"),
                const SkillContainer(skill: "Arduino"),
                const SkillContainer(skill: "Python"),
              ],
            ),
            SizedBox(height: mediaQueryHeight * 0.2),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Education",
                style: TextThemes.sFProSize14Weight600.copyWith(fontSize: 9.sp),
              ),
            ),
            SizedBox(height: mediaQueryHeight * 0.05),
            EducationSection(
                mediaQueryWidth: mediaQueryWidth,
                mediaQueryHeight: mediaQueryHeight),
            SizedBox(height: mediaQueryHeight * 0.2),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "My Projects",
                style: TextThemes.sFProSize14Weight600.copyWith(fontSize: 9.sp),
              ),
            ),
            SizedBox(height: mediaQueryHeight * 0.05),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProjectContainer(
                  imgPath:
                      'assets/img/WhatsApp Image 2024-10-21 at 9.13.54 PM.jpeg',
                  projectName: 'IT Hub',
                  projectDescription:
                      'A simple app where users can access scientific materials by entering their unique ID. It provides quick access to study resources and research materials in a user-friendly interface.',
                ),
                ProjectContainer(
                  imgPath: 'assets/img/Shot (2).png',
                  projectName: 'Flutter Education App',
                  projectDescription:
                      'A user-friendly education app built with Flutter that provides students and teachers with easy access to course materials, assignments, and interactive learning tools.',
                ),
                ProjectContainer(
                  imgPath: 'assets/img/Shot (3).png',
                  projectName: 'Coffee Shop',
                  projectDescription:
                      'A convenient app designed for coffee lovers, allowing users to browse the menu, place orders, and customize their drinks. The app enhances the coffee shop experience with features.',
                ),
              ],
            ),
            SizedBox(height: mediaQueryHeight * 0.2),
            CustomText(
              text: "Contact With Me",
              style: TextThemes.sFProSize14Weight600.copyWith(fontSize: 30),
            ),
            Row(
              children: [
                ContactMeSection(
                    mediaQueryWidth: mediaQueryWidth,
                    mediaQueryHeight: mediaQueryHeight),
                SizedBox(width: mediaQueryWidth * 0.02),
                PersonalInfoSection(
                    mediaQueryWidth: mediaQueryWidth,
                    mediaQueryHeight: mediaQueryHeight),
              ],
            ),
            SizedBox(height: mediaQueryHeight * 0.2),
          ],
        ),
      ),
    );
  }
}
