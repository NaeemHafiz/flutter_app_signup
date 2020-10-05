import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_signup/utils/colors.dart';
import 'package:flutter_app_signup/utils/widget_values.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final Function onSaved;
  final bool obsecureText;
  final int maxLength;
  final FormFieldValidator<String> validator;
  final TextInputFormatter formatter;
  final TextEditingController myController;
  final FocusNode focusNode;

  CustomInput(
      {this.hint,
      this.onSaved,
      this.validator,
      this.formatter,
      this.obsecureText,
      this.maxLength,
      this.myController,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: TextFormField(
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        style: WidgetValues.textStyleInputFiled,
        decoration: InputDecoration(
          fillColor: AppColors.whitecolor,
          filled: true,
          labelText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: WidgetValues.labelStyleInputFiled,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2.0, color: Color(0xffEAEAEA))),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          counter: Offstage(),
        ),
        obscureText: obsecureText,
        maxLength: maxLength,
        validator: validator,
        inputFormatters: <TextInputFormatter>[formatter],
        controller: myController,
        onSaved: onSaved,
      ),
    );
  }
}
