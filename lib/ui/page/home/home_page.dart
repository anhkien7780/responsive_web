import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_dimens.dart';
import 'package:responsive_web/common/app_images.dart';
import 'package:responsive_web/ui/page/home/widgets/home_header.dart';
import 'package:responsive_web/ui/page/home/widgets/skill_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [HomeHeader(), SkillList()]));
  }
}
