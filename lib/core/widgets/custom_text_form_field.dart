import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_styles.dart';
import 'package:flutter_mvvm_architecture_template/core/functions/input_border.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final IconData? suffixIcon;
  final void Function()? suffixIconOnPressed;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.suffixIconOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorRadius: const Radius.circular(16),
      cursorColor: const Color(0xFF999999),
      cursorHeight: 28,
      cursorWidth: 1,
      obscureText: obscureText ?? false,
      style: AppStyles.styleRegular16(context).copyWith(fontSize: 14),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(suffixIcon),
          onPressed: suffixIconOnPressed,
        ),
        labelText: labelText,
        labelStyle: AppStyles.styleRegular16(context),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
      controller: controller,
    );
  }
}
