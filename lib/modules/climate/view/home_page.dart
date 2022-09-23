import 'package:flutter/material.dart';
import 'package:uno/uno.dart';

import '../../../shared/core/theme/colors_theme/colors_theme.dart';
import '../../../shared/core/theme/images_app/images_app.dart';
import '../../../shared/repositories/climate_data_source.dart';
import '../../../shared/repositories/climate_repository.dart';
import '../../../shared/repositories/i_climate_datasource.dart';
import '../../../shared/repositories/i_climate_repository.dart';
import '../../../shared/widget/forecast_card.dart';

import '../../../shared/widget/info_climate_widget.dart';
import '../controller/climate_controller.dart';
import '../widget/field_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Uno uno;
  late final InterfaceDatasoucer climateDataSource;
  late final InterfaceRepository climateRepository;
  late final ClimateController climateController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    uno = Uno();
    climateDataSource = ClimateDataSource(uno);
    climateRepository = ClimateRepository(climateDataSource);
    climateController = ClimateController(climateRepository);
    climateController.getClimate(city: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.colorblackWeather,
      body: SafeArea(
        child: SingleChildScrollView(
          child: AnimatedBuilder(
            animation: climateController,
            builder: (context, _) {
              if (climateController.climateState.hasError) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content:
                          Text(climateController.climateState.errorMenssage),
                    ),
                  );
                });
              }
              if (climateController.climateState.model == null) {
                return const Center(child: CircularProgressIndicator());
              }
              final forecasts = climateController.climateState.model!.forecast;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    InfoClimateWidget(
                      imageTemperature: ImagesApp.hotWeather,
                      temperature:
                          climateController.climateState.model!.temperature,
                      wind: climateController.climateState.model!.wind,
                      description:
                          climateController.climateState.model!.description,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                      key: _formKey,
                      child: FieldSearch(
                        climateController: climateController,
                      ),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        elevation: 15,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.amber,
        child: Container(height: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
