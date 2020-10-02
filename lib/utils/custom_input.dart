// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class CustomInput {
//   // static var textStyleSettingsExtraTextLinksFontSize = TextStyle(
//   //     color: AppColors.textcolorExtraLinksSettings,
//   //     fontSize: AppValue.settingsExtraTextLinksFontSize,
//   //     fontWeight: FontWeight.w400);
//
//   static Widget getRegisterTextFormField(
//       bool obscureText,
//       TextInputType textInputType,
//       TextEditingController textEditingController,
//       Color fillColor,
//       bool filled,
//       int maxLength,
//       String text,
//       TextInputFormatter formatter,
//       FormFieldValidator<String> validator) {
//     return TextFormField(
//         obscureText: obscureText,
//         keyboardType: textInputType,
//         maxLength: maxLength,
//         validator: validator,
//         inputFormatters: <TextInputFormatter>[formatter],
//         controller: textEditingController,
//         decoration: getInputDecoration(fillColor, filled)
//         // InputDecoration(
//         //   fillColor: AppColors.whiteColor,
//         //   filled: true,
//         //   enabledBorder: OutlineInputBorder(
//         //       borderSide: BorderSide(width: 2.0, color: Color(0xffEAEAEA))),
//         //   hintText: text,
//         // ),
//         );
//   }
//
//   static InputDecoration getInputDecoration(Color fillColor, bool filled) {
//     return InputDecoration(fillColor: fillColor, filled: filled);
//   }
//
//   static OutlineInputBorder getOutlineInputBorder(double width, Color color) {
//     return OutlineInputBorder(borderSide: getBorderSide(width, color));
//   }
//
//   static BorderSide getBorderSide(double width, Color color) {
//     return BorderSide(width: width, color:color);
//   }
// }
