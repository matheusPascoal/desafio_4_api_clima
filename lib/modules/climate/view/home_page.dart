import 'package:flutter/material.dart';

import '../../../shared/core/theme/colors_theme/colors_theme.dart';
import '../../../shared/core/theme/images_app/images_app.dart';
import '../../../shared/widget/field_search.dart';
import '../../../shared/widget/forecast_card.dart';
import '../../../shared/widget/info_climate_widget.dart';
import '../controller/climate_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ClimateController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    controller.getClimate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.colorHotWeather,
      body: SafeArea(
        child: SingleChildScrollView(
          //APP QUEBRANDO AQUI ASSIM Q SAI DA SPLASH
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              if (controller.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              final forecasts = controller.model!.forecast;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    InfoClimateWidget(
                      imageTemperature: ImagesApp.hotWeather,
                      temperature: controller.model!.temperature,
                      wind: controller.model!.wind,
                      description: controller.model!.description,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                      key: _formKey,
                      child: const FieldSearch(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: forecasts.length,
                        itemBuilder: (context, index) =>
                            ForecastCard(forecast: forecasts[index]),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
