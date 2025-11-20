import 'package:flutter/material.dart';
import 'package:responsive_web/ui/page/home/widgets/home_header.dart';
import 'package:responsive_web/ui/page/home/widgets/skill_list.dart';
import 'package:responsive_web/ui/page/home/widgets/test_benefits_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [HomeHeader(), SkillList(), TestBenefitsSection()],
      ),
    );
  }
}
