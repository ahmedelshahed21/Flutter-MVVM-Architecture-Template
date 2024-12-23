import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_styles.dart';


void customSnackBar(BuildContext context, String message, {IconData? icon, Color? iconColor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      duration: const Duration(seconds: 2),
      content: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           icon != null? Icon(
              icon,
              color: iconColor ?? Colors.yellow,
              size: 30,
            ):const SizedBox(),
            const SizedBox(width: 10,),
            Flexible(
              child: Text(message,
                  style: AppStyles.styleRegular16(context).copyWith(color: Colors.yellow)),
            ),
          ],
        ),
      )));
}
