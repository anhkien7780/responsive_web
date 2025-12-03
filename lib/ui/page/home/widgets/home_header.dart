import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_web/common/app_data.dart';
import 'package:responsive_web/common/app_dimens.dart';
import 'package:responsive_web/common/app_images.dart';
import 'package:responsive_web/common/app_texts.dart';

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
          defaultValue: AppDimens.homeHeaderSpacingDefault,
          conditionalValues: [
            Condition.smallerThan(
              name: DESKTOP,
              value: AppDimens.homeHeaderSpacingDesktop,
            ),
            Condition.smallerThan(
              name: TABLET,
              value: AppDimens.homeHeaderSpacingTablet,
            ),
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
        top: AppDimens.homeHeaderPaddingTop,
        right: ResponsiveValue<double>(
          context,
          defaultValue: AppDimens.homeHeaderPaddingRightDefault,
          conditionalValues: [
            Condition.smallerThan(
              name: DESKTOP,
              value: AppDimens.homeHeaderPaddingRightDesktop,
            ),
            Condition.smallerThan(
              name: TABLET,
              value: AppDimens.homeHeaderPaddingRightTablet,
            ),
          ],
        ).value,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: AppDimens.homeHeaderActionHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppDimens.homeHeaderActionSpacing,
            children: [
              isMobile
                  ? IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                  : Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        spacing: AppDimens.homeHeaderActionSpacing,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(AppTexts.solutionsAndServices),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(AppTexts.products),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(AppTexts.technologies),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(AppTexts.humanResources),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(AppTexts.enterprise),
                          ),
                        ],
                      ),
                    ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  side: BorderSide.none,
                  fixedSize: Size.fromHeight(AppDimens.homeHeaderActionHeight),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  AppTexts.contact,
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
          defaultValue: AppDimens.homeHeaderInfoPaddingHorizontalDefault,
          conditionalValues: [
            Condition.smallerThan(
              name: DESKTOP,
              value: AppDimens.homeHeaderInfoPaddingHorizontalDesktop,
            ),
            Condition.smallerThan(
              name: TABLET,
              value: AppDimens.homeHeaderInfoPaddingHorizontalTablet,
            ),
          ],
        ).value,
      ),
      child: Align(
        alignment: isMobile ? Alignment.center : Alignment.centerLeft,
        child: SizedBox(
          width: isMobile
              ? AppDimens.homeHeaderInfoWidthMobile
              : AppDimens.homeHeaderInfoWidthDesktop,
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
                    defaultValue: AppDimens.homeHeaderTitleSizeDefault,
                    conditionalValues: [
                      Condition.smallerThan(
                        name: DESKTOP,
                        value: AppDimens.homeHeaderTitleSizeDesktop,
                      ),
                      Condition.smallerThan(
                        name: TABLET,
                        value: AppDimens.homeHeaderTitleSizeTablet,
                      ),
                    ],
                  ).value,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: isMobile ? TextAlign.center : null,
              ),
              SizedBox(
                height: ResponsiveValue<double>(
                  context,
                  defaultValue: AppDimens.homeHeaderTitleSpacingDefault,
                  conditionalValues: [
                    Condition.smallerThan(
                      name: TABLET,
                      value: AppDimens.homeHeaderTitleSpacingTablet,
                    ),
                  ],
                ).value,
              ),
              Text(
                AppData.headerDescription,
                style: TextStyle(
                  fontSize: ResponsiveValue<double>(
                    context,
                    defaultValue: AppDimens.homeHeaderDescSizeDefault,
                    conditionalValues: [
                      Condition.smallerThan(
                        name: DESKTOP,
                        value: AppDimens.homeHeaderDescSizeDesktop,
                      ),
                      Condition.smallerThan(
                        name: TABLET,
                        value: AppDimens.homeHeaderDescSizeTablet,
                      ),
                    ],
                  ).value,
                ),
                textAlign: isMobile ? TextAlign.center : null,
              ),
              SizedBox(
                height: ResponsiveValue<double>(
                  context,
                  defaultValue: AppDimens.homeHeaderDescSpacingDefault,
                  conditionalValues: [
                    Condition.smallerThan(
                      name: DESKTOP,
                      value: AppDimens.homeHeaderDescSpacingDesktop,
                    ),
                    Condition.smallerThan(
                      name: TABLET,
                      value: AppDimens.homeHeaderDescSpacingTablet,
                    ),
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
                  defaultValue: AppDimens.homeHeaderSearchWidthDefault,
                  conditionalValues: [
                    Condition.smallerThan(
                      name: DESKTOP,
                      value: AppDimens.homeHeaderSearchWidthDesktop,
                    ),
                    Condition.smallerThan(
                      name: TABLET,
                      value: AppDimens.homeHeaderSearchWidthTablet,
                    ),
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
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppDimens.homeHeaderSubmitTextSize,
                          ),
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
