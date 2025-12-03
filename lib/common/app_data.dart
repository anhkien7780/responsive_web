import 'package:responsive_web/model/entities/skill.dart';
import 'package:responsive_web/common/app_texts.dart';

import '../ui/page/home/widgets/skill_list.dart';
import 'app_svgs.dart';

class AppData {
  AppData._();

  // Header
  static const String headerTitle = AppTexts.headerTitle;
  static const String headerDescription = AppTexts.headerDescription;
  static const String searchHint = AppTexts.searchHint;
  static const String submit = AppTexts.submit;

  // Skill
  static const String skillTitle = AppTexts.skillTitle;
  static const String skillDescription = AppTexts.skillDescription;

  static final skills = [
    Skill(
      name: AppTexts.skillDocumentAnalysis,
      description: AppTexts.skillDocumentAnalysisDesc,
      iconPath: AppSvgs.icFile,
    ),
    Skill(
      name: AppTexts.skillAcceptanceEvaluation,
      description: AppTexts.skillAcceptanceEvaluationDesc,
      iconPath: AppSvgs.icStar,
    ),
    Skill(
      name: AppTexts.skillBusinessRulesAnalysis,
      description: AppTexts.skillBusinessRulesAnalysisDesc,
      iconPath: AppSvgs.icCrown,
    ),
    Skill(
      name: AppTexts.skillFlowCharts,
      description: AppTexts.skillFlowChartsDesc,
      iconPath: AppSvgs.icChart,
    ),
    Skill(
      name: AppTexts.skillStakeholderAnalysis,
      description: AppTexts.skillStakeholderAnalysisDesc,
      iconPath: AppSvgs.icCircleChart,
    ),
    Skill(
      name: AppTexts.skillPrototyping,
      description: AppTexts.skillPrototypingDesc,
      iconPath: AppSvgs.icFigma,
    ),
  ];
}
