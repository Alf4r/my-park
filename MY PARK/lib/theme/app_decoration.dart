import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray600,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: appTheme.gray5003,
      );
  static BoxDecoration get fillGray60001 => BoxDecoration(
        color: appTheme.gray60001,
      );
  static BoxDecoration get fillGrayBf => BoxDecoration(
        color: appTheme.gray400Bf,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepPurpleAToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.deepPurpleA700,
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGray10003ToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray10003,
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGray300ToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray300,
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.12),
          end: Alignment(0.46, 0.9),
          colors: [
            appTheme.gray800,
            appTheme.gray50000,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray50000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.12),
          end: Alignment(0.5, 1.3),
          colors: [
            appTheme.gray800,
            appTheme.gray50000,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray60002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.7, 0.95),
          colors: [
            appTheme.gray60002,
            appTheme.gray60002.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray40001,
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onError,
            appTheme.gray60000,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            appTheme.deepOrange10000,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.38, 1.46),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            theme.colorScheme.onPrimary.withOpacity(0),
            theme.colorScheme.onPrimary.withOpacity(1),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack90004 => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90004.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900041 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90004.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900042 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90004.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get circleBorder39 => BorderRadius.circular(
        39.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL45 => BorderRadius.only(
        topLeft: Radius.circular(45.h),
        topRight: Radius.circular(44.h),
        bottomLeft: Radius.circular(45.h),
        bottomRight: Radius.circular(44.h),
      );
  static BorderRadius get customBorderTL50 => BorderRadius.only(
        topLeft: Radius.circular(50.h),
        topRight: Radius.circular(50.h),
        bottomLeft: Radius.circular(30.h),
        bottomRight: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
