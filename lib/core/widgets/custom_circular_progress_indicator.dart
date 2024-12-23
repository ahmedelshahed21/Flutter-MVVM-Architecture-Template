import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: AppColors.primaryColor,
      color: AppColors.black,
    );
  }
}