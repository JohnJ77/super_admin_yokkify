// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color lineColor;
  late Color customColor1;
  late Color customColor2;
  late Color customColor3;
  late Color fondo;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF32146D);
  late Color secondaryColor = const Color(0xFFFF4A4A);
  late Color tertiaryColor = const Color(0xFF707070);
  late Color alternate = const Color(0x27FF5963);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF707070);
  late Color secondaryText = const Color(0xFFFFFFFF);

  late Color lineColor = Color(0xFFE0E3E7);
  late Color customColor1 = Color(0x80707070);
  late Color customColor2 = Color(0xFFFFF500);
  late Color customColor3 = Color(0x34707070);
  late Color fondo = Color(0x0C32146D);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Gilory';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      );
  String get title2Family => 'Gilory';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 18,
      );
  String get title3Family => 'Gilory';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Gilory';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get subtitle2Family => 'Gilory';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  String get bodyText1Family => 'Gilory';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'Gilory';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Gilory';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      );
  String get title2Family => 'Gilory';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 18,
      );
  String get title3Family => 'Gilory';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Gilory';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  String get subtitle2Family => 'Gilory';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  String get bodyText1Family => 'Gilory';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'Gilory';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Gilory';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 60,
      );
  String get title2Family => 'Gilory';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 34,
      );
  String get title3Family => 'Gilory';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44,
      );
  String get subtitle1Family => 'Gilory';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      );
  String get subtitle2Family => 'Gilory';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 26,
      );
  String get bodyText1Family => 'Gilory';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24,
      );
  String get bodyText2Family => 'Gilory';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Gilory',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 22,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
