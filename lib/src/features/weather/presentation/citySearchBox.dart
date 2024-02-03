import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_weather_example_flutter/src/constants/appColors.dart';
import 'package:open_weather_example_flutter/src/features/weather/application/providers.dart';

class WeatherCitySearchBox extends ConsumerStatefulWidget {
  const WeatherCitySearchBox({super.key});
  @override
  ConsumerState<WeatherCitySearchBox> createState() => _CitySearchRowState();
}

class _CitySearchRowState extends ConsumerState<WeatherCitySearchBox> {
  static const _radius = 30.0;

  late final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = ref.read(cityProvider);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // circular radius
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: _radius * 2,
        decoration:  BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(_radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
                decoration:  InputDecoration(
                  fillColor: Colors.white,
                  filled: true,

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(
                        _radius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      _radius,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      _radius,
                    ),
                  ),
                ),
                onSubmitted: (value) =>
                    ref.read(cityProvider.notifier).state = value,
              ),
            ),
            InkWell(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(Icons.search_outlined),
              ),
              onTap: () {
                FocusScope.of(context).unfocus();
                ref.read(cityProvider.notifier).state = _searchController.text;
              },
            )
          ],
        ),
      ),
    );
  }
}
