import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../view_model/navigate_button_provider.dart';
import 'widgets/navigator_button.dart';

class NavigateSideBar extends StatelessWidget {
  const NavigateSideBar({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var navigatorProvider = Provider.of<NavigateButtonProvider>(context);

    return Container(
      alignment: Alignment.center,
      width: mediaQueryWidth * 0.07,
      height: mediaQueryHeight,
      color: Colors.white,
      child: SizedBox(
        width: mediaQueryWidth * 0.16,
        child: Column(
          children: [
            SizedBox(height: mediaQueryHeight * 0.2),
            NavigatorButton(
              imgPath: "assets/icons/home (1).png",
              scale: 23,
              index: 0, position: 0, scrollController: navigatorProvider.scrollController, context: context,
            ),
            NavigatorButton(
              imgPath: 'assets/icons/skill.png',
              scale: 23,
              index: 1, position: 0.3, scrollController: navigatorProvider.scrollController, context: context,
            ),
            NavigatorButton(
              imgPath: 'assets/icons/graduation-cap.png',
              scale: 23,
              index: 2, position: 0.7, scrollController: navigatorProvider.scrollController, context: context,
            ),
            NavigatorButton(
              imgPath: 'assets/icons/coding.png',
              scale: 23,
              index: 3, position: 1.1, scrollController: navigatorProvider.scrollController, context: context,
            ),
            NavigatorButton(
              imgPath: 'assets/icons/messages.png',
              scale: 23,
              index: 4, position: 1.75, scrollController:navigatorProvider.scrollController, context: context,
            ),
          ],
        ),
      ),
    );
  }
}
