import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/navigate_button_provider.dart';
import 'features/information_side_bar/view/information_side_bar.dart';
import 'features/main_page/view/main_page.dart';
import 'features/navigate_side_bar/view/navigator_side_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  void dispose() {
    var navigatorProvider = Provider.of<NavigateButtonProvider>(context);
    navigatorProvider.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF2F0F8),
      body: SizedBox(
        width: mediaQueryWidth,
        height: mediaQueryHeight,
        child: const Row(
          children: [
            InformationSideBar(),
            MainPage(),
            NavigateSideBar(),
          ],
        ),
      ),
    );
  }
}






