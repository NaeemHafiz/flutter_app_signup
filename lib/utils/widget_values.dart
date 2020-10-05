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

  static var textStyleListView = TextStyle(
      color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w500);

  static String validateEmail(String value) {
    if (value.length == 0) {
      return "Email is required";
    } else {
      return null;
    }
  }

  static String validateMobile(String mobileNnumber) {
    if (mobileNnumber.length == 0) {
      return 'Please Enter Mobile Number';
    } else if (mobileNnumber[0] == '0') {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
