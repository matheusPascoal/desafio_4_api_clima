import 'package:flutter/material.dart';
import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme.dart';

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
            style:
                AppTheme.fonts.bold700Head26(color: AppTheme.colors.textWhite),
          ),
          Text(
            description,
            style:
                AppTheme.fonts.bold700Title24(color: AppTheme.colors.textWhite),
          ),
          SizedBox(
            child: Text(
              wind,
              style: AppTheme.fonts
                  .bold700Title22(color: AppTheme.colors.textWhite),
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
