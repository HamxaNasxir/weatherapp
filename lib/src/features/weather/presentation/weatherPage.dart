import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/constants/appColors.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/citySearchBox.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/currentWeather.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/hourlyWeather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key, required this.city});
  final String city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.rainGradient,
          ),
        ),
        child: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              WeatherCitySearchBox(),
              Spacer(),
              CurrentWeather(),
              Spacer(),
              HourlyWeather(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
