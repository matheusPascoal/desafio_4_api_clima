import 'package:flutter/material.dart';
import 'package:uno/uno.dart';
import '../../../shared/core/http_client/uno_http_impl.dart';
import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme_data.dart';
import '../controller/climate_controller.dart';
import '../datasource/climate/climate_data_source.dart';
import '../repositories/climate/climate_repository.dart';
import '../widget/field_search.dart';
import '../widget/forecast_card.dart';
import '../widget/info_climate_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textCityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final climateController = ClimateController(
    ClimateRepository(
      ClimateDataSource(
        UnoHttpImpl(
          Uno(),
        ),
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    // DEPOIS QUE CONSTRUIR TUDO CHAMA OQ ESTA NO ADDPOSTFRAMECALBACK
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      climateController.getClimate(city: 'betim');
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: themeData.splashColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: AnimatedBuilder(
            animation: climateController,
            builder: (context, _) {
              if (climateController.climateState.hasError) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: themeData.errorColor,
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
                    // IMAGE/TEMPERATURA/VENTO/DESCRIÇÃO TEMPO.
                    InfoClimateWidget(
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
                        textCityController: textCityController,
                        climateController: climateController,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(280, mediaQueryData),
                      child: ListView.builder(
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
