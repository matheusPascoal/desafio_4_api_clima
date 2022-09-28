import 'package:flutter/material.dart';

import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme_data.dart';
import '../model/model.dart';

class ForecastCard extends StatelessWidget {
  final Forecast forecast;
  const ForecastCard({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.indicatorColor,
          border: Border.all(
            width: Responsivity.automatic(3, mediaQueryData),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            // CALENDARIO
            Icon(
              Icons.calendar_month_outlined,
              color: themeData.canvasColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                forecast.day,
                style: themeData.textTheme.titleSmall,
              ),
            ),

            SizedBox(
              width: Responsivity.automatic(10, mediaQueryData),
            ),
            //
            // TEMPERATURA
            Image.asset(
              'assets/temperate.png',
              color: themeData.cardColor,
              scale: Responsivity.automatic(2.8, mediaQueryData),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                forecast.temperature,
                style: themeData.textTheme.titleSmall,
              ),
            ),
            SizedBox(
              width: Responsivity.automatic(10, mediaQueryData),
            ),
            //
            // VENTO
            Image.asset(
              'assets/wind.png',
              color: themeData.cardColor,
              scale: Responsivity.automatic(3, mediaQueryData),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                forecast.wind,
                style: themeData.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
