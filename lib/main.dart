import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/ui/page/home/home_page.dart';

import 'common/app_dimens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: const [
          Breakpoint(start: 0, end: AppDimens.tabletWidth, name: MOBILE),
          Breakpoint(
            start: AppDimens.tabletWidth + 1,
            end: AppDimens.desktopWidth,
            name: TABLET,
          ),
          Breakpoint(
            start: AppDimens.desktopWidth + 1,
            end: double.infinity,
            name: DESKTOP,
          ),
        ],
        child: ClampingScrollWrapper.builder(context, child!),
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        );
      },
    );
  }
}
