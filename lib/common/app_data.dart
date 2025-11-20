import 'package:responsive_web/model/entities/skill.dart';

import '../ui/page/home/widgets/skill_list.dart';
import 'app_svgs.dart';

class AppData {
  AppData._();

  // Header
  static const String headerTitle = "Bilgi Teknolojilerinde 23 Yıllık Tecrübe";
  static const String headerDescription =
      "Müşterilerimizin yüksek kalite seviyelerini koruyabilmeleri için farklı sektörlerde tecrübe kazanmış uzman kadrolarımızla Proje Yönetimi, İş Analizi ve Test Yönetimi hizmetleri sunmaktayız.";
  static const String searchHint = "Mail bültenimize kayıt ol";
  static const String submit = "Kayıt Ol";

  // Skill
  static const String skillTitle = "Kalite ve Süreç Yönetimi";
  static const String skillDescription =
      "Müşterilerimizin yüksek kalite seviyelerini koruyabilmeleri için farklı sektörlerde tecrübe kazanmış uzman kadrolarımızla Proje Yönetimi, İş Analizi ve Test Yönetimi hizmetleri sunmaktayız.";

  static final skills = [
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
}
