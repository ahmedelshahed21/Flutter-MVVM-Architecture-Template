import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';


OutlineInputBorder buildOutlineInputBorder({Color? color}) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColors.black),
      borderRadius: BorderRadius.circular(4));
}

UnderlineInputBorder buildUnderlineInputBorder({Color? color}) {
  return UnderlineInputBorder(
      borderSide: BorderSide(
          width: 1.5,
          color: color??AppColors.black
      )
  );
}
