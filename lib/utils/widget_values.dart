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
