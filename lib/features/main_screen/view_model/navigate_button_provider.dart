import 'package:flutter/material.dart';

class NavigateButtonProvider extends ChangeNotifier {

  final ScrollController scrollController = ScrollController();

  void scrollToEnd(
      ScrollController _scrollController, BuildContext context, double position) {
    _scrollController.animateTo(
      MediaQuery.of(context).size.width * position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

}