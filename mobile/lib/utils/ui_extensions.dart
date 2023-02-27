import 'package:flutter/material.dart';

extension ColorX on Color {
  ColorFilter get asColorFilter {
    return ColorFilter.mode(this, BlendMode.srcIn);
  }
}
