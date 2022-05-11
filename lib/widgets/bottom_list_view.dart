import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_forecast_daily.dart';
import 'package:flutter_weather_app/widgets/forecast_card.dart';

class BottomListView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const BottomListView({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '7-Day Weather Forecast'.toUpperCase(),
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 140.0,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    width: MediaQuery.of(context).size.width / 2.7,
                    height: 160.0,
                    //color: Colors.black,
                    child: forecastCard(snapshot, index),
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 8.0),
              itemCount: snapshot.data!.list!.length),
        ),
      ],
    );
  }
}
