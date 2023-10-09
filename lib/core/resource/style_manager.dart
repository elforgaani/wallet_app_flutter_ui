import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      letterSpacing: 0.5,
      fontFamily: FontConstants.fontFamilyQuicsand,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color);
}

TextStyle getLightStyle({double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontWeightManager.light, color);
}

//regular textStyle

TextStyle getRegularStyle({double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontWeightManager.regular, color);
}

//medium textStyle

TextStyle getMediumStyle({double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontWeightManager.medium, color);
}

//semiBold textStyle

TextStyle getSemiBoldStyle({double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontWeightManager.semiBold, color);
}

//bold textStyle

TextStyle getBoldStyle({double? fontSize, required Color color}) {
  return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.bold, color);
}
