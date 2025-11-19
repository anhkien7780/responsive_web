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
      constraints: const BoxConstraints(maxWidth: 1153),
      child: ResponsiveGridView.builder(
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
    );
  }
}
