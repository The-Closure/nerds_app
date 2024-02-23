import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:flutter/material.dart';

Widget myFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  Function()? onTap,
  bool isPassword = false,
  required String? Function(String?)? validate,
  String? hintText,
  TextStyle? hintStyle,
  required String label,
  TextStyle? labelStyle,
  Widget? prefix,
  TextStyle? prefixStyle,
  String? prefixText,
  Widget? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        focusColor: darkBlue,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixStyle: prefixStyle,
        labelStyle: labelStyle,
        prefixText: prefixText,
        labelText: label,
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: suffix,
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

//***************************************************** */

Widget myButton({
  double? width,
  double? height,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 12,
  required void Function()? function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [lightBlue, darkBlue]),
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
    );
