import 'package:flutter/material.dart';

class AQIColors {
  static const Color good = Color(0xFF00E400); // Green
  static const Color moderate = Color(0xFFFFFF00); // Yellow
  static const Color unhealthyForSensitiveGroups = Color(0xFFFF7E00); // Orange
  static const Color unhealthy = Color(0xFFFF0000); // Red
  static const Color veryUnhealthy = Color(0xFF8F3F97); // Purple
  static const Color hazardous = Color(0xFF7E0023); // Maroon

  static Color getAQIColor(int aqi) {
    if (aqi <= 50) {
      return good;
    } else if (aqi <= 100) {
      return moderate;
    } else if (aqi <= 150) {
      return unhealthyForSensitiveGroups;
    } else if (aqi <= 200) {
      return unhealthy;
    } else if (aqi <= 300) {
      return veryUnhealthy;
    } else {
      return hazardous;
    }
  }
}
