import 'dart:ui';

import 'package:flutter/material.dart';

import '../../modules/climate/model/model.dart';
import '../core/theme/colors_theme/colors_theme.dart';

class ForecastCard extends StatelessWidget {
  final Forecast forecast;
  const ForecastCard({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                forecast.day,
                style: const TextStyle(
                  color: ColorsText.colorTextWhite,
                  fontSize: 30,
                ),
              ),
              Text(
                forecast.temperature,
                style: const TextStyle(
                  color: ColorsText.colorTextWhite,
                  fontSize: 30,
                ),
              ),
              Text(
                forecast.wind,
                style: const TextStyle(
                  color: ColorsText.colorTextWhite,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
