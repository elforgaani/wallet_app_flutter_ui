import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/core/resource/font_manager.dart';
import 'package:wallet_app/core/resource/style_manager.dart';
import 'package:wallet_app/core/resource/value_manager.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorManager.darkPurpke3, secondary: ColorManager.darkPurple2),
    primaryColor: ColorManager.darkPurple2,
    scaffoldBackgroundColor: ColorManager.white,
    textTheme: TextTheme(
        displayLarge: getMediumStyle(
            color: ColorManager.blackPurple, fontSize: FontSize.s24),
        labelLarge:
            getBoldStyle(color: ColorManager.white, fontSize: FontSize.s16),
        labelMedium: getMediumStyle(
            color: ColorManager.fontGrey, fontSize: FontSize.s16),
        labelSmall: getMediumStyle(
            color: ColorManager.fontGrey, fontSize: FontSize.s13),
        titleLarge:
            getMediumStyle(color: ColorManager.black, fontSize: FontSize.s18),
        titleMedium:
            getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
        titleSmall: getMediumStyle(
            color: ColorManager.fontGrey, fontSize: FontSize.s10)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: ColorManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.r10.r),
      ),
      elevation: 2,
      foregroundColor: ColorManager.darkPurple2,
    )),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(AppRadius.r10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.darkPurple2),
          borderRadius: BorderRadius.circular(AppRadius.r10.r),
        ),
        labelStyle: getMediumStyle(
            color: ColorManager.fontGrey, fontSize: FontSize.s16)),
  );
}
