import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_data.dart';
import 'package:responsive_web/common/app_dimens.dart';

class SkillList extends StatelessWidget {
  const SkillList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.skillListPaddingVerticalDefault,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: AppDimens.skillListPaddingVerticalDesktop)],
        ).value,
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.skillListPaddingHorizontalDefault,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: AppDimens.skillListPaddingHorizontalDesktop),
            Condition.smallerThan(name: TABLET, value: AppDimens.skillListPaddingHorizontalTablet),
          ],
        ).value,
      ),
      child: Column(
        children: [
          Text(
            AppData.skillTitle,
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: AppDimens.skillListTitleSizeDefault,
                conditionalValues: [
                  Condition.smallerThan(name: TABLET, value: AppDimens.skillListTitleSizeTablet),
                ],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: AppDimens.skillListTitleSpacingDefault,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: AppDimens.skillListTitleSpacingDesktop),
              ],
            ).value,
          ),
          Text(
            AppData.skillDescription,
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: AppDimens.skillListDescSizeDefault,
                conditionalValues: [
                  Condition.smallerThan(name: TABLET, value: AppDimens.skillListDescSizeTablet),
                ],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: AppDimens.skillListDescSpacingDefault,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: AppDimens.skillListDescSpacingDesktop),
              ],
            ).value,
          ),
          Container(
            alignment: AlignmentGeometry.center,
            width: ResponsiveValue<double>(
              context,
              defaultValue: AppDimens.skillListGridWidthDefault,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: AppDimens.skillListGridWidthDesktop),
                Condition.smallerThan(name: TABLET, value: AppDimens.skillListGridWidthTablet),
              ],
            ).value,
            child: ResponsiveGridView.builder(
              alignment: AlignmentGeometry.center,
              itemCount: AppData.skills.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: ResponsiveGridDelegate(
                maxCrossAxisExtent: 350,
                mainAxisSpacing: 80,
                crossAxisSpacing: 116,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                return SkillCard(
                  iconPath: AppData.skills[index].iconPath,
                  name: AppData.skills[index].name,
                  description: AppData.skills[index].description,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.iconPath,
    required this.name,
    required this.description,
  });

  final String iconPath;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppDimens.skillCardSpacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconPath, width: AppDimens.skillCardIconWidth, height: AppDimens.skillCardIconHeight),
        Text(name, textAlign: TextAlign.center),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}
