import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/weaher_scroll_view.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '',
          style: TextStyle(color: AppColors.dark),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location),
            color: AppColors.dark,
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_city),
            color: AppColors.dark,
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 50.0,
          ),
          WidgetList(),
        ],
      ),
    );
  }
}
