import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_dimens.dart';
import 'package:responsive_web/common/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _createHeaderBackground(context),
        _createActions(context),
        _createInfo(context),
      ],
    );
  }

  Widget _createHeaderBackground(BuildContext context) {
    return Image.asset(
      height: ResponsiveValue<double>(
        context,
        defaultValue: AppDimens.desktopHeaderHeight,
        conditionalValues: [
          Condition.equals(name: TABLET, value: AppDimens.tabletHeaderHeight),
          Condition.equals(name: MOBILE, value: AppDimens.mobileHeaderHeight),
        ],
      ).value,
      AppImages.imgHeader,
      fit: BoxFit.fitHeight,
    );
  }

  Widget _createActions(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Positioned(
      top: 45,
      left: isMobile ? 20 : null,
      right: ResponsiveValue<double>(
        context,
        defaultValue: 125,
        conditionalValues: [
          Condition.equals(name: TABLET, value: 40),
          Condition.equals(name: MOBILE, value: 20),
        ],
      ).value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 40,
        children: [
          isMobile
              ? IconButton(onPressed: () {}, icon: Icon(Icons.menu))
              : ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width - 200,
                  ),
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 16,
                    alignment: WrapAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text("Çözüm ve Hizmetler"),
                      ),
                      GestureDetector(onTap: () {}, child: Text("Ürünler")),
                      GestureDetector(
                        onTap: () {},
                        child: Text("Teknolojiler"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text("İnsan Kaynakları"),
                      ),
                      GestureDetector(onTap: () {}, child: Text("Kurumsal")),
                    ],
                  ),
                ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "İletişim",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createInfo(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Positioned(
      top: ResponsiveValue<double>(
        context,
        defaultValue: 200,
        conditionalValues: [
          Condition.equals(name: TABLET, value: 161),
          Condition.equals(name: MOBILE, value: 137),
        ],
      ).value,
      left: ResponsiveValue<double>(
        context,
        defaultValue: 122,
        conditionalValues: [
          Condition.equals(name: TABLET, value: 84),
          Condition.equals(name: MOBILE, value: 20),
        ],
      ).value,
      right: isMobile ? 20 : null,
      child: SizedBox(
        width: ResponsiveValue<double>(
          context,
          defaultValue: 665,
          conditionalValues: [
            Condition.equals(name: TABLET, value: 465),
            Condition.equals(name: MOBILE, value: 335),
          ],
        ).value,
        height: ResponsiveValue<double>(
          context,
          defaultValue: 406,
          conditionalValues: [
            Condition.equals(name: TABLET, value: 406),
            Condition.equals(name: MOBILE, value: 380),
          ],
        ).value,
        child: Column(
          crossAxisAlignment: isMobile
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Text(
              "Bilgi Teknolojilerinde 23 Yıllık Tecrübe",
              style: TextStyle(
                fontSize: ResponsiveValue<double>(
                  context,
                  defaultValue: 64,
                  conditionalValues: [
                    Condition.equals(name: TABLET, value: 56),
                    Condition.equals(name: MOBILE, value: 32),
                  ],
                ).value,
                fontWeight: FontWeight.w700,
              ),
              textAlign: isMobile ? TextAlign.center : null,
            ),
            SizedBox(
              height: ResponsiveValue<double>(
                context,
                defaultValue: 20,
                conditionalValues: [Condition.equals(name: MOBILE, value: 30)],
              ).value,
            ),
            Text(
              "Müşterilerimizin yüksek kalite seviyelerini koruyabilmeleri için farklı sektörlerde tecrübe kazanmış uzman kadrolarımızla Proje Yönetimi, İş Analizi ve Test Yönetimi hizmetleri sunmaktayız.",
              style: TextStyle(
                fontSize: ResponsiveValue<double>(
                  context,
                  defaultValue: 20,
                  conditionalValues: [
                    Condition.equals(name: TABLET, value: 16),
                    Condition.equals(name: MOBILE, value: 12),
                  ],
                ).value,
              ),
              textAlign: isMobile ? TextAlign.center : null,
            ),
            SizedBox(
              height: ResponsiveValue<double>(
                context,
                defaultValue: 50,
                conditionalValues: [
                  Condition.equals(name: TABLET, value: 20),
                  Condition.equals(name: MOBILE, value: 47),
                ],
              ).value,
            ),
            SizedBox(
              width: ResponsiveValue<double>(
                context,
                defaultValue: 504,
                conditionalValues: [
                  Condition.equals(name: TABLET, value: 422),
                  Condition.equals(name: MOBILE, value: 335),
                ],
              ).value,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  suffixIcon: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: Text("Kayıt Ol"),
                  ),
                  hint: Text("Mail bültenimize kayıt ol"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
