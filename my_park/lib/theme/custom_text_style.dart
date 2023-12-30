import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeMontserratOnPrimary =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargePrimaryContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeUrbanistGray90003 =>
      theme.textTheme.bodyLarge!.urbanist.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeUrbanistGray9000318 =>
      theme.textTheme.bodyLarge!.urbanist.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static get bodyMediumGray5004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray5004,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumMontserratBlack90004 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black90004,
      );
  static get bodyMediumMontserratBlack9000415 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black90004,
        fontSize: 15.fSize,
      );
  static get bodyMediumMontserratBluegray900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodySmallMontserratBlack90004 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.black90004,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMontserratBlack90004Regular =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.black90004,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMontserratBlack90004Regular10 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.black90004,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMontserratOnPrimary =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallUrbanistGray70001 =>
      theme.textTheme.bodySmall!.urbanist.copyWith(
        color: appTheme.gray70001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallYellowA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellowA400,
      );
  static get bodySmallYellowA40094 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellowA40094,
      );
  // Headline text style
  static get headlineLargeBlack90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90002,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeOnPrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallCandal => theme.textTheme.headlineSmall!.candal;
  static get headlineSmallMontserratOnPrimary =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineSmallUrbanist =>
      theme.textTheme.headlineSmall!.urbanist.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallUrbanistGray90003 =>
      theme.textTheme.headlineSmall!.urbanist.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallUrbanistTealA700 =>
      theme.textTheme.headlineSmall!.urbanist.copyWith(
        color: appTheme.tealA700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeUrbanist =>
      theme.textTheme.labelLarge!.urbanist.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeUrbanist_1 => theme.textTheme.labelLarge!.urbanist;
  static get labelLargeYuGothicUIOnPrimary =>
      theme.textTheme.labelLarge!.yuGothicUI.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  // Montserrat text style
  static get montserratOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).montserrat;
  // Title text style
  static get titleLargeCairo => theme.textTheme.titleLarge!.cairo.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeCairo22 => theme.textTheme.titleLarge!.cairo.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeCairoRegular =>
      theme.textTheme.titleLarge!.cairo.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumUrbanist =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumUrbanistGray90003 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static get titleMediumUrbanistOnPrimary =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumYuGothicUIBlack900 =>
      theme.textTheme.titleMedium!.yuGothicUI.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get candal {
    return copyWith(
      fontFamily: 'Candal',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get yuGothicUI {
    return copyWith(
      fontFamily: 'Yu Gothic UI',
    );
  }

  TextStyle get custom {
    return copyWith(
      fontFamily: '?????',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}
