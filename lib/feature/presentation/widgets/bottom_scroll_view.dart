import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/forecast_card.dart';

class BottomScrollView extends StatelessWidget {
  final List<dynamic> list;

  const BottomScrollView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width / 7,
                height: 150.0,
                child: forecastCard(list[index]),
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 8.0),
          itemCount: list.length),
    );
  }
}
