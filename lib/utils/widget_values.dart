import 'package:flutter/material.dart';

import 'colors.dart';
import 'values.dart';

class WidgetValues {
  static var labelStyleInputFiled = TextStyle(
      height: 1,
      color: AppColors.dashboardLsitviewsHearderColors,
      fontSize: AppValue.formFieldFontSize,
      fontWeight: FontWeight.bold);
  static var labelStyleInputFiled1 = TextStyle(
      height: 1,
      color: AppColors.dashboardLsitviewsHearderColors,
      fontSize: AppValue.formFieldFontSize1,
      fontWeight: FontWeight.bold);

  static var textStyleInputFiled = TextStyle(
      height: 1,
      color: AppColors.dashboardLsitviewsHearderColors,
      fontWeight: FontWeight.w300,
      fontSize: AppValue.formFieldFontSize);

  static var textStyleSettingsHeadings = TextStyle(
      fontSize: AppValue.settingsHeadingsHeight,
      fontWeight: FontWeight.w900,
      color: AppColors.bottomNavigationIconColor);

  static var textStyleSettingsExtraTextLinksFontSize = TextStyle(
      color: AppColors.textcolorExtraLinksSettings,
      fontSize: AppValue.settingsExtraTextLinksFontSize,
      fontWeight: FontWeight.w400);


  static var space = SizedBox(
    height: 10.0,
  );

  static var divider = Divider(
    height: 1,
    color: AppColors.dividerColor,
    thickness: 0.1,
  );



  static Widget getDashboardListviewTextview(
      String text, double Size, FontWeight fontweight, Color color) {
    return Text(text,textAlign: TextAlign.center,
        style: TextStyle(fontSize: Size, fontWeight: fontweight, color: color));
  }
  static String validateEmail(String value) {
//    final bool isValid = EmailValidator.validate(value);
    if (value.length == 0) {
      return "Email is required";
    }
//    else if (!isValid) {
//      return "Please enter valid email address";
//    }
    else {
      return null;
    }
  }

}
