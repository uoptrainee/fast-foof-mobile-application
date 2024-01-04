import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayMediumBluegray20001 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray20001,
        fontSize: 40.fSize,
      );
  // Headline text style
  static get headlineLargeBlue600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blue600,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeIndigo100 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigo100,
        fontWeight: FontWeight.w800,
      );
  static get headlineLargeIndigoA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w800,
      );
  static get headlineLargeIndigoA700ExtraBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w800,
      );
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlue900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blue900,
      );
  static get headlineSmallBlue900SemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blue900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallErrorContainerBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallErrorContainerBold_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallIndigoA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get headlineSmallLime900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lime900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlue900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue900,
      );
  static get titleLargeBlue900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue900,
      );
  static get titleLargeBluegray200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get titleLargeIndigo200b5 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo200B5,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallBlue900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallLime900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime900,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
