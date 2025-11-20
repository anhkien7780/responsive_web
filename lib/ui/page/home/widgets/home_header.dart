import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_data.dart';
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
            Condition.smallerThan(name: DESKTOP, value: 96),
            Condition.smallerThan(name: TABLET, value: 62),
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
            Condition.smallerThan(name: DESKTOP, value: 40),
            Condition.smallerThan(name: TABLET, value: 20),
          ],
        ).value,
      ),
      child: Align(
        alignment: Alignment.centerRight,
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
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  side: BorderSide.none,
                  fixedSize: Size.fromHeight(40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
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
            Condition.smallerThan(name: DESKTOP, value: 84),
            Condition.smallerThan(name: TABLET, value: 20),
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
                AppData.headerTitle,
                style: TextStyle(
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 64,
                    conditionalValues: [
                      Condition.smallerThan(name: DESKTOP, value: 56),
                      Condition.smallerThan(name: TABLET, value: 32),
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
                    Condition.smallerThan(name: TABLET, value: 30),
                  ],
                ).value,
              ),
              Text(
                AppData.headerDescription,
                style: TextStyle(
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: 20,
                    conditionalValues: [
                      Condition.smallerThan(name: DESKTOP, value: 16),
                      Condition.smallerThan(name: TABLET, value: 12),
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
                    Condition.smallerThan(name: DESKTOP, value: 20),
                    Condition.smallerThan(name: TABLET, value: 47),
                  ],
                ).value,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                width: ResponsiveValue<double>(
                  context,
                  defaultValue: 504,
                  conditionalValues: [
                    Condition.smallerThan(name: DESKTOP, value: 422),
                    Condition.smallerThan(name: TABLET, value: 335),
                  ],
                ).value,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text(
                          AppData.submit,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    hint: Text(AppData.searchHint),
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
