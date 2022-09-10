import 'package:flutter/material.dart';

class Responsivity {
  static double calcWidth(double tamanho, MediaQueryData data) {
    final size = data.size;

    var coeficiente = tamanho / 375;

    return size.width * coeficiente;
  }

  static double _cacHeight(double tamanho, MediaQueryData data) {
    final size = data.size;

    var coeficiente = tamanho / 667;

    return size.height * coeficiente;
  }

  static double automatic(double tamanho, MediaQueryData data) {
    final width = data.size.width;
    final heigth = data.size.height;

    return width > heigth
        ? _cacHeight(tamanho, data)
        : _cacHeight(tamanho, data);
  }
}
