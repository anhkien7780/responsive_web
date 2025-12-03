import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_svgs.dart';
import 'package:responsive_web/common/app_dimens.dart';

class TestBenefitsSection extends StatelessWidget {
  const TestBenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.testBenefitsPaddingVerticalDefault,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: AppDimens.testBenefitsPaddingVerticalDesktop),
            Condition.smallerThan(name: TABLET, value: AppDimens.testBenefitsPaddingVerticalTablet),
          ],
        ).value,
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.testBenefitsPaddingHorizontalDefault,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: AppDimens.testBenefitsPaddingHorizontalDesktop),
            Condition.smallerThan(name: TABLET, value: AppDimens.testBenefitsPaddingHorizontalTablet),
          ],
        ).value,
      ),
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        spacing: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.testBenefitsSpacingDefault,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: AppDimens.testBenefitsSpacingDesktop)],
        ).value,
        children: [
          Column(
            children: [
              Text(
                "Quản Lý Kiểm Thử Mang Lại Điều Gì?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: AppDimens.testBenefitsTitleSizeDefault,
                    conditionalValues: [
                      Condition.smallerThan(name: TABLET, value: AppDimens.testBenefitsTitleSizeTablet),
                    ],
                  ).value,
                ),
              ),
              Text(
                "Giải Pháp Hỗ Trợ IoT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: AppDimens.testBenefitsSubtitleSizeDefault,
                    conditionalValues: [
                      Condition.smallerThan(name: TABLET, value: AppDimens.testBenefitsSubtitleSizeTablet),
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
            columnSpacing: AppDimens.testBenefitsColumnSpacing,
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowSpacing: AppDimens.testBenefitsRowSpacing,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Column(
                  children: [
                    Text(
                      "Nâng Cao Chất Lượng",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
                    ),
                    Text(
                      "Phần Mềm",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
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
                      "Nâng Cao Chất Lượng",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
                    ),
                    Text(
                      "Phần Mềm",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
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
                      "Nâng Cao Chất Lượng",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
                    ),
                    Text(
                      "Phần Mềm",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
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
                      "Nâng Cao Chất Lượng",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
                    ),
                    Text(
                      "Phần Mềm",
                      style: TextStyle(color: Colors.white, fontSize: AppDimens.testBenefitsItemTextSize),
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
