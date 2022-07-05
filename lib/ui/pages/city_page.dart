import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/theme/app_colors.dart';
import 'package:flutter_weather_app/ui/theme/text_styles.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.blueGrey[800],
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: AppColors.dark,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none),
                  icon: Icon(
                    Icons.location_city,
                    color: AppColors.dark,
                    size: 50.0,
                  ),
                ),
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            TextButton(
              child: Text(
                'Get Weather',
                style: AppTypography.hint,
              ),
              onPressed: () {
                cityName ??= '';
                Navigator.pop(
                    context, {"cityName": cityName, "isFirstFetch": false});
              },
            ),
          ],
        ),
      ),
    );
  }
}
