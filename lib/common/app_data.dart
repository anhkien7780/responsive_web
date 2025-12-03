import 'package:responsive_web/model/entities/skill.dart';

import '../ui/page/home/widgets/skill_list.dart';
import 'app_svgs.dart';

class AppData {
  AppData._();

  // Header
  static const String headerTitle = "23 Năm Kinh Nghiệm Trong CNTT";
  static const String headerDescription =
      "Chúng tôi cung cấp dịch vụ Quản lý Dự án, Phân tích Nghiệp vụ và Quản lý Kiểm thử với đội ngũ chuyên gia giàu kinh nghiệm trong nhiều lĩnh vực khác nhau để giúp khách hàng duy trì tiêu chuẩn chất lượng cao.";
  static const String searchHint = "Đăng ký nhận bản tin";
  static const String submit = "Đăng Ký";

  // Skill
  static const String skillTitle = "Quản Lý Chất Lượng và Quy Trình";
  static const String skillDescription =
      "Chúng tôi cung cấp dịch vụ Quản lý Dự án, Phân tích Nghiệp vụ và Quản lý Kiểm thử với đội ngũ chuyên gia giàu kinh nghiệm trong nhiều lĩnh vực khác nhau để giúp khách hàng duy trì tiêu chuẩn chất lượng cao.";

  static final skills = [
    Skill(
      name: "Phân Tích Tài Liệu",
      description:
          "Mô tả chi tiết về phân tích tài liệu. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icFile,
    ),
    Skill(
      name: "Chấp Nhận và Đánh Giá",
      description:
          "Mô tả chi tiết về chấp nhận và đánh giá. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icStar,
    ),
    Skill(
      name: "Phân Tích Quy Tắc Nghiệp Vụ",
      description:
          "Mô tả chi tiết về phân tích quy tắc nghiệp vụ. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icCrown,
    ),
    Skill(
      name: "Sơ Đồ Luồng",
      description:
          "Mô tả chi tiết về sơ đồ luồng. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icChart,
    ),
    Skill(
      name: "Phân Tích Các Bên Liên Quan",
      description:
          "Mô tả chi tiết về phân tích các bên liên quan. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icCircleChart,
    ),
    Skill(
      name: "Tạo Mẫu",
      description:
          "Mô tả chi tiết về tạo mẫu. Cung cấp thông tin cần thiết cho quy trình này.",
      iconPath: AppSvgs.icFigma,
    ),
  ];
}
