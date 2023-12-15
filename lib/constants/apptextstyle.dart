import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';

class AppTextStyle {
  static TextStyle normalTextStyle(double fontSize, Color textColor) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: textColor,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle normalLightTextStyle(double fontSize, Color textColor) {
    return GoogleFonts.poppins(
        fontSize: fontSize, color: textColor, fontWeight: FontWeight.w300);
  }

  static TextStyle themeBoldTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.sp_24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.bold);
  }

  static TextStyle themeBoldSevenTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.sp_24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700);
  }

  static TextStyle themeNormalLightTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.sp_16,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w400);
  }

  static TextStyle themeBoldNormalTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.sp_24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w600);
  }

  static TextStyle themeBoldInterTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.inter(
        fontSize: fontSize ?? FontSize.sp_20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700);
  }

  static TextStyle themeNormaInterTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.inter(
        fontSize: fontSize ?? FontSize.sp_20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w400);
  }

  static TextStyle themeDarkInterTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.inter(
        fontSize: fontSize ?? FontSize.sp_20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  static TextStyle themeBoldSixTextStyle({double? fontSize, Color? color}) {
    return GoogleFonts.poppins(
        fontSize: fontSize ?? FontSize.sp_24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w600);
  }

  static buttonTextStyle({Color? color}) => GoogleFonts.poppins(
      fontSize: FontSize.sp_16,
      color: color ?? AppColors.white,
      fontWeight: FontWeight.w600);

  static bodyMediumTextStyle({Color? color}) => GoogleFonts.barlow(
      fontSize: FontSize.sp_14,
      color: color ?? Colors.black,
      fontWeight: FontWeight.w500);
}
