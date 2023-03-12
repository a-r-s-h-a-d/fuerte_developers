import 'package:flutter/material.dart';
import 'package:fuerte_developers/core/colors.dart';

TextStyle textstyle1({required Color textColor}) {
  return TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: textColor,
  );
}

TextStyle textstyle2() {
  return TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: kgrey.withOpacity(0.5),
  );
}
