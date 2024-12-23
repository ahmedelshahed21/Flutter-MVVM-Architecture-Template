import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_constants.dart';


abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.pacificoFont,
        color: AppColors.black);
  }
}

// scaleFactor
// responsive font size
// (min , max) font size


double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double min = fontSize * .8;
  double max = fontSize * 1.2;

  return responsiveFontSize.clamp(min, max);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 370;
  } else if (width < 1300) {
    return width / 950;
  } else {
    return width / 1700;
  }
}
