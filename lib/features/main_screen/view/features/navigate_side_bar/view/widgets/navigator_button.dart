import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_protfolio/features/main_screen/view_model/navigate_button_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../view_model/change_color_provider.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
    required this.imgPath,
    required this.scale,
    required this.index,
    required this.position,
    required this.scrollController,
    required this.context,
  });

  final String imgPath;
  final double scale;
  final double position;
  final int index;
  final ScrollController scrollController;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    var colorProvider = Provider.of<ChangeColorProvider>(context);
    var navigatorProvider = Provider.of<NavigateButtonProvider>(context);
    var mediaQuery = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: InkWell(
        onTap: () {
          colorProvider.toggleButton(index);
          navigatorProvider.scrollToEnd(scrollController, context, position);
        },
        child: Container(
          width: mediaQuery * 0.04,
          height: mediaQuery * 0.04,
          decoration: BoxDecoration(
            color: colorProvider.isActive(index)
                ? const Color(0xffFFB400)
                : Colors.grey[100],
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Image.asset(
            imgPath,
            scale: scale,
          ),
        ),
      ),
    );
  }
}
