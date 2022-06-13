import 'package:flutter/material.dart';
import 'package:flutter_weather_app/feature/presentation/widgets/weaher_scroll_view.dart';
import 'package:flutter_weather_app/utilities/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dark,
        title: const Text('openwethermap.org'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.my_location),
          color: AppColors.light,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_city),
            color: AppColors.light,
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
