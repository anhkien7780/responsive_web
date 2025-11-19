import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
          conditionalValues: [Condition.equals(name: MOBILE, value: 60)],
        ).value,
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: 20,
          conditionalValues: [
            Condition.largerThan(name: DESKTOP, value: 143),
            Condition.largerThan(name: TABLET, value: 130),
          ],
        ).value,
      ),
      constraints: const BoxConstraints(maxWidth: 1153),
      child: Column(
        children: [
          Text(
            "Kalite ve Süreç Yönetimi",
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: 36,
                conditionalValues: [Condition.equals(name: MOBILE, value: 24)],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: 30,
              conditionalValues: [
                Condition.smallerThan(name: TABLET, value: 15),
              ],
            ).value,
          ),
          Text(
            "Müşterilerimizin yüksek kalite seviyelerini koruyabilmeleri için farklı sektörlerde tecrübe kazanmış uzman kadrolarımızla Proje Yönetimi, İş Analizi ve Test Yönetimi hizmetleri sunmaktayız.",
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: 24,
                conditionalValues: [Condition.equals(name: MOBILE, value: 12)],
              ).value,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ResponsiveValue<double>(
              context,
              defaultValue: 90,
              conditionalValues: [
                Condition.smallerThan(name: TABLET, value: 40),
              ],
            ).value,
          ),
          ResponsiveGridView.builder(
            alignment: Alignment.center,
            itemCount: skills.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: ResponsiveGridDelegate(
              crossAxisExtent: 300,
              mainAxisSpacing: 88,
              crossAxisSpacing: 100,
              childAspectRatio: 1.37,
            ),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(skills[index].iconPath),
                  Text(skills[index].name, textAlign: TextAlign.center),
                  Text(skills[index].description, textAlign: TextAlign.center),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
