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
      height: Responsivity.automatic(280, mediaQueryData),
      width: Responsivity.automatic(300, mediaQueryData),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            temperature,
            style: themeData.textTheme.displayLarge,
          ),
          Text(
            description,
            style: themeData.textTheme.labelLarge,
          ),
          SizedBox(
            child: Text(
              wind,
              style: themeData.textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
