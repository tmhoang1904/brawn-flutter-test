import 'package:flutter/material.dart';

class Dimensions {
  static double get spacingVeryTiny => 2;
  static double get spacingTiny => 4;
  static double get spacingSmall => 8;
  static double get spacingMedium => 12;
  static double get spacingLarge => 16;
  static double get spacingExtraLarge => 20;
  static double get spacingHuge => 24;
  static double get spacingExtraHuge => 32;
  static double get spacingGiant => 40;
  static double get spacingExtraGiant => 48;
  static double get spacingExtraExtraGiant => 54;

  static double get fontSizeVeryVeryTiny => 8;
  static double get fontSizeVeryTiny => 10;
  static double get fontSizeTiny => 12;
  static double get fontSizeSmall => 14;
  static double get fontSizeMedium => 16;
  static double get fontSizeLarge => 18;
  static double get fontSizeExtraLarge => 20;
  static double get fontSizeExtraExtraLarge => 22;
  static double get fontSizeHuge => 24;
  static double get fontSizeExtraHuge => 26;
  static double get fontSizeExtraExtraHuge => 28;
  static double get fontSizeExtraExtraExtraHuge => 30;
  static double get fontSizeGiant => 32;

  static double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;

  static double statusbarHeight(BuildContext context) =>
      MediaQuery.of(context).viewPadding.top;
}
