import 'package:flutter/material.dart';
import '../../../shared/core/responsivity/responsivity.dart';
import '../../../shared/core/theme/theme_data.dart';
import '../controller/climate_controller.dart';

class FieldSearch extends StatelessWidget {
  final String? Function(String?)? validation;
  final ClimateController climateController;
  final TextEditingController textCityController;

  FieldSearch({
    super.key,
    required this.climateController,
    this.validation,
    required this.textCityController,
  });

  // final textCityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      width: 300,
      child: TextFormField(
        //  initialValue: climateController.city,
        validator: validation,
        controller: textCityController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: CircleAvatar(
            backgroundColor: themeData.bottomAppBarColor,
            child: IconButton(
              onPressed: () {
                final value = textCityController.text;
                if (value.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: themeData.errorColor,
                      content: Text(
                        'Error field is empty',
                        style: themeData.textTheme.titleLarge,
                      ),
                      action: SnackBarAction(label: '', onPressed: () {}),
                    ),
                  );
                  return;
                }
                climateController.getClimate(city: value);
              },
              icon: Icon(
                Icons.search_rounded,
                color: themeData.primaryColor,
                size: Responsivity.automatic(25, mediaQueryData),
              ),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: themeData.backgroundColor),
          fillColor: themeData.backgroundColor,
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
