import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minhlostudio_page/main.dart';

class AppTextStyle {
  static TextStyle common({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration = TextDecoration.none,
    double? height = 1.25,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.k2d(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        height: height,
        fontStyle: fontStyle);
  }

  static TextStyle t5w700([
    Color? color,
  ]) {
    return common(
      fontSize: 5.sp, fontWeight: FontWeight.w700, color: color,
    );
  }

  static TextStyle t8w400([Color? color]) {
    return common(
      fontSize: 8.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t8w700([Color? color]) {
    return common(
      fontSize: 8.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t8w700_underline([Color? color]) {
    return common(
      fontSize: 8.sp,
      fontWeight: FontWeight.w700,
      color: color,
      decoration: TextDecoration.underline,
    );
  }

  static TextStyle t9w400([Color? color]) {
    return common(
      fontSize: 9.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t9w700([Color? color]) {
    return common(
      fontSize: 9.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t10w400([Color? color]) {
    return common(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t10w700([Color? color]) {
    return common(
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t15w400([Color? color]) {
    return common(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t15w700([Color? color]) {
    return common(
      fontSize: 15.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t16w400([Color? color]) {
    return common(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t16w700([Color? color]) {
    return common(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t20w400([Color? color]) {
    return common(
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t20w700([Color? color]) {
    return common(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t23w400([Color? color]) {
    return common(
      fontSize: 23.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t23w700([Color? color]) {
    return common(
      fontSize: 23.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t30w400([Color? color]) {
    return common(
      fontSize: 30.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t30w700([Color? color]) {
    return common(
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t50w400([Color? color]) {
    return common(
      fontSize: 50.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t50w700([Color? color]) {
    return common(
      fontSize: 50.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle t100w400([Color? color]) {
    return common(
      fontSize: 100.sp,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle t100w700([Color? color]) {
    return common(
      fontSize: 100.sp,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }
}
