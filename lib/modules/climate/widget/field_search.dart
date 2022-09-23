import 'package:flutter/material.dart';
import '../controller/climate_controller.dart';

class FieldSearch extends StatelessWidget {
  final String? Function(String?)? validation;
  final ClimateController climateController;
  FieldSearch({
    super.key,
    required this.climateController,
    this.validation,
  });

  final textCityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        validator: validation,
        controller: textCityController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: CircleAvatar(
            backgroundColor: Colors.black54,
            child: IconButton(
              onPressed: () {
                final value = textCityController.text;
                if (value.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: const Text('Error field is empty'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    ),
                  );
                  return;
                }
                climateController.getClimate(city: value);
              },
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          fillColor: Colors.white70,
        ),
      ),
    );
  }
}
