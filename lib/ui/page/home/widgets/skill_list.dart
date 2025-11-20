import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_dimens.dart';
import 'package:responsive_web/common/app_svgs.dart';

class Skill {
  Skill({
    required this.name,
    required this.description,
    required this.iconPath,
  });

  String name;
  String description;
  String iconPath;
}

final skills = [
  Skill(
    name: "Döküman Analizi",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icFile,
  ),
  Skill(
    name: "Kabul ve Değerlendirme",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icStar,
  ),
  Skill(
    name: "İş Kuralları Analizi",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icCrown,
  ),
  Skill(
    name: "Akış Diyagramları",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icChart,
  ),
  Skill(
    name: "Paydaş Analizi",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icCircleChart,
  ),
  Skill(
    name: "Prototipleme",
    description:
        "Ante vulputate ut at accumsan et. Feugiat at tempus, est senectus amet, elementum.",
    iconPath: AppSvgs.icFigma,
  ),
];

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
      constraints: const BoxConstraints(maxWidth: AppDimens.desktopWidth),
      child: Column(
        children: [
          Text(
            "Kalite ve Süreç Yönetimi",
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
            "Müşterilerimizin yüksek kalite seviyelerini koruyabilmeleri için farklı sektörlerde tecrübe kazanmış uzman kadrolarımızla Proje Yönetimi, İş Analizi ve Test Yönetimi hizmetleri sunmaktayız.",
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
              itemCount: skills.length,
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
                  iconPath: skills[index].iconPath,
                  name: skills[index].name,
                  description: skills[index].description,
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
