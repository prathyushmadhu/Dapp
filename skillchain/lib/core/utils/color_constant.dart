import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color red900 = fromHex('#b82525');

  static Color black9003f = fromHex('#3f000000');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray50 = fromHex('#fcfcfc');

  static Color gray100 = fromHex('#f2f4fb');

  static Color black900 = fromHex('#000000');

  static Color gray10001 = fromHex('#f6f1fb');

  static Color blueGray800 = fromHex('#3f414e');

  static Color redA70001 = fromHex('#ff0000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#f80202');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
