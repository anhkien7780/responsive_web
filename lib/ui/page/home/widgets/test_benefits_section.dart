import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_svgs.dart';

class TestBenefitsSection extends StatelessWidget {
  const TestBenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveValue<double>(
          context,
          defaultValue: 68,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: 37),
            Condition.smallerThan(name: TABLET, value: 50),
          ],
        ).value,
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: 78,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: 74),
            Condition.smallerThan(name: TABLET, value: 84),
          ],
        ).value,
      ),
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        spacing: ResponsiveValue<double>(
          context,
          defaultValue: 64,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: 55)],
        ).value,
        children: [
          Column(
            children: [
              Text(
                "Test Yönetimiyle Neler Sağlıyoruz?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 48,
                    conditionalValues: [
                      Condition.smallerThan(name: TABLET, value: 36),
                    ],
                  ).value,
                ),
              ),
              Text(
                "IoT Destekli Çözümler",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 18,
                    conditionalValues: [
                      Condition.smallerThan(name: TABLET, value: 14),
                    ],
                  ).value,
                ),
              ),
            ],
          ),
          ResponsiveRowColumn(
            layout: ResponsiveBreakpoints.of(context).isMobile
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            columnSpacing: 40,
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowSpacing: 46,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Column(
                  children: [
                    Text(
                      "Yazılım Kalitesini",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Arttırıyoruz",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                child: SvgPicture.asset(AppSvgs.icCaretCircleDoubleRight),
              ),
              ResponsiveRowColumnItem(
                child: Column(
                  children: [
                    Text(
                      "Yazılım Kalitesini",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Arttırıyoruz",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                child: SvgPicture.asset(AppSvgs.icCaretCircleDoubleRight),
              ),
              ResponsiveRowColumnItem(
                child: Column(
                  children: [
                    Text(
                      "Yazılım Kalitesini",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Arttırıyoruz",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                child: SvgPicture.asset(AppSvgs.icCaretCircleDoubleRight),
              ),
              ResponsiveRowColumnItem(
                child: Column(
                  children: [
                    Text(
                      "Yazılım Kalitesini",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Arttırıyoruz",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
