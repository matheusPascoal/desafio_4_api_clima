import 'package:flutter/material.dart';

import '../../../shared/core/responsivity/responsivity.dart';
import '../model/model.dart';

class ForecastCard extends StatelessWidget {
  final Forecast forecast;
  const ForecastCard({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFF2F3543),
          border: Border.all(width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: Responsivity.automatic(2, mediaQueryData),
            top: Responsivity.automatic(5, mediaQueryData),
            left: Responsivity.automatic(20, mediaQueryData),
            right: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              Text(
                forecast.day,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              Text(
                forecast.temperature,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              Text(
                forecast.wind,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
