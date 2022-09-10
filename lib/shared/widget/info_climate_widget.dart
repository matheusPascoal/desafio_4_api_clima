import 'package:flutter/material.dart';

import '../core/theme/colors_theme/colors_theme.dart';
import '../core/theme/images_app/images_app.dart';

class InfoClimateWidget extends StatelessWidget {
  final String temperature;
  final String wind;
  final String description;
  final String imageTemperature;
  const InfoClimateWidget({
    super.key,
    required this.temperature,
    required this.imageTemperature,
    required this.wind,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 200,
      child: Column(
        children: [
          Image.network(
            ImagesApp.hotWeather,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            temperature,
            style:
                const TextStyle(color: ColorsText.colorTextWhite, fontSize: 60),
          ),
          Text(
            wind,
            style:
                const TextStyle(color: ColorsText.colorTextWhite, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                description,
                style: const TextStyle(
                  color: ColorsText.colorTextWhite,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
