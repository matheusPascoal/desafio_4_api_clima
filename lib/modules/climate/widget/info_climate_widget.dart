import 'package:flutter/material.dart';
import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme_data.dart';

class InfoClimateWidget extends StatelessWidget {
  final String temperature;
  final String wind;
  final String description;
  // final String imageTemperature;
  const InfoClimateWidget({
    super.key,
    required this.temperature,
    // required this.imageTemperature,
    required this.wind,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: Responsivity.automatic(220, mediaQueryData),
      width: Responsivity.automatic(300, mediaQueryData),
      child: Column(
        children: [
          SizedBox(
            height: Responsivity.automatic(20, mediaQueryData),
          ),
          Text(
            temperature,
            style: themeData.textTheme.displayLarge,
          ),
          Text(
            description,
            style: themeData.textTheme.titleSmall,
          ),
          SizedBox(
            child: Padding(
              padding:
                  EdgeInsets.all(Responsivity.automatic(15, mediaQueryData)),
              child: Text(
                wind,
                style: themeData.textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(
            height: Responsivity.automatic(10, mediaQueryData),
          ),
        ],
      ),
    );
  }
}
