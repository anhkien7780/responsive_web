import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_images.dart';

class TeamIntro extends StatelessWidget {
  const TeamIntro({super.key});

  @override
  Widget build(BuildContext context) {
    bool biggerThanMobile = ResponsiveBreakpoints.of(
      context,
    ).largerThan(MOBILE);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveValue<double>(
          context,
          defaultValue: 160,
          conditionalValues: [Condition.smallerThan(name: TABLET, value: 90)],
        ).value,
      ),
      child: Column(
        spacing: 120,
        children: [
          biggerThanMobile
              ? HorizontalIntroInfo(
                  title: teamIntroInfos.first.name,
                  description: teamIntroInfos.first.description,
                  suffix: Image.asset(
                    AppImages.imgIllustration2,
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 408,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: 370),
                      ],
                    ).value,
                  ),
                )
              : VerticalIntroInfo(
                  title: teamIntroInfos.first.name,
                  description: teamIntroInfos.first.description,
                  imagePath: AppImages.imgIllustration2,
                ),
          biggerThanMobile
              ? HorizontalIntroInfo(
                  prefix: Image.asset(
                    AppImages.imgIllustration1,
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 400,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: 370),
                      ],
                    ).value,
                  ),
                  title: teamIntroInfos.last.name,
                  description: teamIntroInfos.last.description,
                )
              : VerticalIntroInfo(
                  title: teamIntroInfos.last.name,
                  description: teamIntroInfos.last.description,
                  imagePath: AppImages.imgIllustration1,
                ),
        ],
      ),
    );
  }
}

class VerticalIntroInfo extends StatelessWidget {
  const VerticalIntroInfo({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 338),
      child: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 312),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () {}, child: Text("Khám Phá")),
          ),
        ],
      ),
    );
  }
}

class HorizontalIntroInfo extends StatelessWidget {
  const HorizontalIntroInfo({
    super.key,
    required this.title,
    required this.description,
    this.prefix,
    this.suffix,
  });

  final Widget? prefix;
  final Widget? suffix;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1080),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: ResponsiveValue<double>(
          context,
          defaultValue: 85,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: 56)],
        ).value,
        children: [
          prefix ?? const SizedBox.shrink(),
          Container(
            constraints: BoxConstraints(
              maxWidth: ResponsiveValue<double>(
                context,
                defaultValue: 480,
                conditionalValues: [
                  Condition.smallerThan(name: DESKTOP, value: 428),
                ],
              ).value,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: ResponsiveValue<double>(
                      context,
                      defaultValue: 64,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: 58),
                      ],
                    ).value,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: ResponsiveValue<double>(
                      context,
                      defaultValue: 16,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: 14),
                      ],
                    ).value,
                  ),
                ),
                SizedBox(
                  height: ResponsiveValue<double>(
                    context,
                    defaultValue: 80,
                    conditionalValues: [
                      Condition.smallerThan(name: DESKTOP, value: 52),
                    ],
                  ).value,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text("Khám Phá"),
                ),
              ],
            ),
          ),
          suffix ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}

final teamIntroInfos = [
  TeamIntroInfo(
    name: "Quản Lý Chất Lượng và Quy Trình",
    description:
        "Đội ngũ giàu kinh nghiệm của chúng tôi bao gồm các chuyên gia quản lý dự án, được chứng nhận PMP® từ nhiều lĩnh vực khác nhau. Chúng tôi sẵn sàng hỗ trợ bạn quản lý dự án, củng cố các lĩnh vực bạn cảm thấy yếu kém, đồng thời áp dụng và phát triển phương pháp luận PMI® được quốc tế công nhận trong công ty của bạn.",
  ),
  TeamIntroInfo(
    name: "Quản Lý và Phân Tích Kiểm Thử",
    description:
        "Trong các dự án tư vấn, chúng tôi thực hiện kiểm thử thủ công hoặc tự động ở mọi giai đoạn dự án để ngăn ngừa lỗi phần mềm. Đội ngũ kiểm thử giàu kinh nghiệm của chúng tôi cung cấp dịch vụ kiểm thử phần mềm chất lượng cao, mang lại trải nghiệm khách hàng an toàn, chất lượng và hài lòng từ đầu đến cuối.",
  ),
];

class TeamIntroInfo {
  final String name;
  final String description;

  TeamIntroInfo({required this.name, required this.description});
}
