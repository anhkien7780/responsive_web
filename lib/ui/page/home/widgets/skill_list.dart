import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_data.dart';

class SkillList extends StatelessWidget {
  const SkillList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveValue<double>(
          context,
          defaultValue: 120,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: 60)],
        ).value,
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: 143,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: 130),
            Condition.smallerThan(name: TABLET, value: 20),
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
                defaultValue: 36,
                conditionalValues: [
                  Condition.smallerThan(name: TABLET, value: 24),
                ],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: 30,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: 15),
              ],
            ).value,
          ),
          Text(
            AppData.skillDescription,
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: 24,
                conditionalValues: [
                  Condition.smallerThan(name: TABLET, value: 12),
                ],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: 90,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: 40),
              ],
            ).value,
          ),
          Container(
            alignment: AlignmentGeometry.center,
            width: ResponsiveValue<double>(
              context,
              defaultValue: 1153,
              conditionalValues: [
                Condition.smallerThan(name: DESKTOP, value: 764),
                Condition.smallerThan(name: TABLET, value: 335),
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
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconPath, width: 91, height: 81),
        Text(name, textAlign: TextAlign.center),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}
