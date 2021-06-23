import 'package:flutter/material.dart';

class AppColors {
  static final primary = Color(0xFFFF941A);
  static final grey = Color(0xFF585666);
  static final delete = Color(0xFF585666);
  static final heading = Color(0xFF585666);
  static final body = Color(0xFF706E7A);
  static final stroke = Color(0xFFE3E3E6);
  static final shape = Color(0xFFFAFAFC);
  static final background = Color(0xFFFFFFFF);
  static final linerGradientLogin = LinearGradient(
    colors: [
      Color.fromRGBO(255, 255, 255, 0),
      Color.fromRGBO(255, 255, 255, 0.7),
      Color.fromRGBO(255, 255, 255, 0.9),
      Color.fromRGBO(255, 255, 255, 1),
      Color.fromRGBO(255, 255, 255, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static final radialGradientLogin = RadialGradient(
    colors: [
      Color(0xFFFFC380),
      Color(0xFFFF941A),
    ],
    center: Alignment(0, 0.5),
    radius: 0.8,
  );
}
