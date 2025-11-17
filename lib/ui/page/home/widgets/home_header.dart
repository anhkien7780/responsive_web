import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_dimens.dart';
import 'package:responsive_web/common/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.desktopHeaderHeight,
          conditionalValues: [
            Condition.equals(name: TABLET, value: AppDimens.tabletHeaderHeight),
            Condition.equals(name: MOBILE, value: AppDimens.mobileHeaderHeight),
          ],
        ).value,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.imgHeader),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        spacing: ResponsiveValue<double>(
          context,
          defaultValue: 135,
          conditionalValues: [
            Condition.equals(name: TABLET, value: 96),
            Condition.equals(name: MOBILE, value: 62),
          ],
        ).value,
        children: [_createActions(context), _createInfo(context)],
      ),
    );
  }

  Widget _createActions(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Padding(
      padding: EdgeInsets.only(
        top: 35,
        right: ResponsiveValue<double>(
          context,
          defaultValue: 125,
          conditionalValues: [
            Condition.equals(name: TABLET, value: 40),
            Condition.equals(name: MOBILE, value: 20),
          ],
        ).value,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 40,
            children: [
              isMobile
                  ? IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                  : Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        spacing: 40,
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
                          GestureDetector(
                            onTap: () {},
                            child: Text("Kurumsal"),
                          ),
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
        ),
      ),
    );
  }

  Widget _createInfo(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveValue<double>(
          context,
          defaultValue: 122,
          conditionalValues: [
            Condition.equals(name: TABLET, value: 84),
            Condition.equals(name: MOBILE, value: 20),
          ],
        ).value,
      ),
      child: Align(
        alignment: isMobile ? Alignment.center : Alignment.centerLeft,
        child: SizedBox(
          width: isMobile ? 335 : 665,
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
                  conditionalValues: [
                    Condition.equals(name: MOBILE, value: 30),
                  ],
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
      ),
    );
  }
}
