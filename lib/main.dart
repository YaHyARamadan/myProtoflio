import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_protfolio/features/main_screen/view_model/navigate_button_provider.dart';
import 'package:provider/provider.dart';

import 'core/theme/color_theme.dart';
import 'features/main_screen/view/main_screen.dart';
import 'features/main_screen/view_model/change_color_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChangeColorProvider()),
        ChangeNotifierProvider(create: (context) => NavigateButtonProvider())
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return  MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home:  const MainScreen());
          }),
    );
  }
}
