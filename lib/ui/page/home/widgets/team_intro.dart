import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_images.dart';
import 'package:responsive_web/common/app_dimens.dart';

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
          defaultValue: AppDimens.teamIntroPaddingVerticalDefault,
          conditionalValues: [Condition.smallerThan(name: TABLET, value: AppDimens.teamIntroPaddingVerticalTablet)],
        ).value,
      ),
      child: Column(
        spacing: AppDimens.teamIntroSpacing,
        children: [
          biggerThanMobile
              ? HorizontalIntroInfo(
                  title: teamIntroInfos.first.name,
                  description: teamIntroInfos.first.description,
                  suffix: Image.asset(
                    AppImages.imgIllustration2,
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: AppDimens.teamIntroImageHeightDefault,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroImageHeightDesktop),
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
                      defaultValue: AppDimens.teamIntroImageHeightDefault2,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroImageHeightDesktop),
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
      constraints: BoxConstraints(maxWidth: AppDimens.teamIntroVerticalMaxWidth),
      child: Column(
        spacing: AppDimens.teamIntroVerticalSpacing,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: AppDimens.teamIntroVerticalImageHeight),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppDimens.teamIntroVerticalTitleSize, fontWeight: FontWeight.w600),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppDimens.teamIntroVerticalDescSize),
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
      constraints: BoxConstraints(maxWidth: AppDimens.teamIntroHorizontalMaxWidth),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.teamIntroHorizontalSpacingDefault,
          conditionalValues: [Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroHorizontalSpacingDesktop)],
        ).value,
        children: [
          prefix ?? const SizedBox.shrink(),
          Container(
            constraints: BoxConstraints(
              maxWidth: ResponsiveValue<double>(
                context,
                defaultValue: AppDimens.teamIntroHorizontalContentMaxWidthDefault,
                conditionalValues: [
                  Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroHorizontalContentMaxWidthDesktop),
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
                      defaultValue: AppDimens.teamIntroHorizontalTitleSizeDefault,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroHorizontalTitleSizeDesktop),
                      ],
                    ).value,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: AppDimens.teamIntroHorizontalTitleSpacing),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: ResponsiveValue<double>(
                      context,
                      defaultValue: AppDimens.teamIntroHorizontalDescSizeDefault,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroHorizontalDescSizeDesktop),
                      ],
                    ).value,
                  ),
                ),
                SizedBox(
                  height: ResponsiveValue<double>(
                    context,
                    defaultValue: AppDimens.teamIntroHorizontalButtonSpacingDefault,
                    conditionalValues: [
                      Condition.smallerThan(name: DESKTOP, value: AppDimens.teamIntroHorizontalButtonSpacingDesktop),
                    ],
                  ).value,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(fontSize: AppDimens.teamIntroHorizontalButtonTextSize, color: Colors.white),
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
