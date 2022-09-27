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
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.primaryColor,
          border: Border.all(
            width: Responsivity.automatic(3, mediaQueryData),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: Responsivity.automatic(2, mediaQueryData),
            top: Responsivity.automatic(5, mediaQueryData),
            left: Responsivity.automatic(30, mediaQueryData),
            right: Responsivity.automatic(30, mediaQueryData),
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
                style: themeData.textTheme.titleLarge,
              ),
              SizedBox(
                width: Responsivity.automatic(40, mediaQueryData),
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: themeData.cardColor,
              ),
              Text(
                forecast.temperature,
                style: themeData.textTheme.titleLarge,
              ),
              SizedBox(
                width: Responsivity.automatic(40, mediaQueryData),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/wind.png',
                          color: themeData.cardColor,
                          scale: Responsivity.automatic(2.8, mediaQueryData),
                        ),
                      ),
                      Container(
                        child: Text(
                          forecast.wind,
                          style: themeData.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Icon(
              //   Icons.calendar_month_outlined,
              //   color: themeData.cardColor,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
