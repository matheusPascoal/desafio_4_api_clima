import 'package:flutter/material.dart';
import 'package:uno/uno.dart';
import '../../../shared/core/http_client/uno_http_impl.dart';
import '../../../shared/core/images/images_app.dart';
import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme_data.dart';
import '../controller/climate_controller.dart';
import '../datasource/climate/climate_data_source.dart';
import '../repositories/climate/climate_repository.dart';
import '../widget/field_search.dart';
import '../widget/forecast_card.dart';
import '../widget/info_climate_widget.dart';

class ClimatePage extends StatefulWidget {
  const ClimatePage({super.key});

  @override
  State<ClimatePage> createState() => _ClimatePageState();
}

class _ClimatePageState extends State<ClimatePage> {
  final textCityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final climateController = ClimateController(
    ClimateRepository(
      ClimateDataSource(
        RestHttpImpl(
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
      backgroundColor: Theme.of(context).splashColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: AnimatedBuilder(
            animation: climateController,
            builder: (context, _) {
              if (climateController.climateState.hasError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: themeData.errorColor,
                    content: Text(climateController.climateState.errorMenssage),
                  ),
                );
              }
              if (climateController.climateState.model == null) {
                return const Center(child: CircularProgressIndicator());
              }
              final forecasts = climateController.climateState.model!.forecast;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Responsivity.automatic(40, mediaQueryData),
                    ),
                    Image.asset(
                      ImagesApp.temperate,
                      color: themeData.cardColor,
                    ),

                    // IMAGE/TEMPERATURA/VENTO/DESCRIÇÃO TEMPO.
                    InfoClimateWidget(
                      temperature:
                          climateController.climateState.model!.temperature,
                      wind: climateController.climateState.model!.wind,
                      description:
                          climateController.climateState.model!.description,
                    ),

                    Form(
                      key: _formKey,
                      child: FieldSearch(
                        textCityController: textCityController,
                        climateController: climateController,
                      ),
                    ),
                    SizedBox(
                      height: Responsivity.automatic(10, mediaQueryData),
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
