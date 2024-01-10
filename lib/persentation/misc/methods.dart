import 'package:flutter/material.dart';

Map<double, SizedBox> _verticalSpaces = {};
Map<double, SizedBox> _horizontalSpaces = {};

SizedBox verticalSpace(double heigth) {
  if (!_verticalSpaces.containsKey(heigth)) {
    _verticalSpaces[heigth] = SizedBox(height: heigth);
  }

  return _verticalSpaces[heigth]!;
}

SizedBox horizontalSpaces(double width) {
  if (!_horizontalSpaces.containsKey(width)) {
    _horizontalSpaces[width] = SizedBox(width: width);
  }

  return _horizontalSpaces[width]!;
}
