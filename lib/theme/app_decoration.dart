import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue900.withOpacity(0.57),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10003,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillBluegray10002 => BoxDecoration(
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo100,
      );
  static BoxDecoration get fillIndigo300 => BoxDecoration(
        color: appTheme.indigo300,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blueGray10003.withOpacity(0.78),
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray100.withOpacity(0.78),
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToIndigoCe => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.indigo30001,
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appTheme.indigo600Ce,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.78),
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get circleBorder74 => BorderRadius.circular(
        74.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
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
