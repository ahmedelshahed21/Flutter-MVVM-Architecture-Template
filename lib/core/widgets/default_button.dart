import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.sizeOf(context).width - 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyles.styleRegular16(context),
          )),
    );
  }
}
