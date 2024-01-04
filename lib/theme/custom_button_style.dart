import 'dart:ui';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientBlueAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(23.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueA200,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray100,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
