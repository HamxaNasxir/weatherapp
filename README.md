# Weatherapp

An example of weather app using the [OpenWeatherMap API](https://openweathermap.org/api) to show weather forecast

# architecture
Flutter App Architecture: The Repository Pattern https://codewithandrea.com/articles/flutter-repository-pattern/

In this context, we can use the repository pattern to access data objects from various sources, such as a backend API, and make them available as type-safe entities to the domain layer of the app (which is where our business logic lives).

Why use?
The repository pattern is very handy if your app has a complex data layer with many different endpoints that return unstructured data (such as JSON) that you want to isolate from the rest of the app.

More broadly, here are a few use cases where I feel the repository pattern is most appropriate:

talking to REST APIs
talking to local or remote databases (e.g. Sembast, Hive, Firestore, etc.)
talking to device-specific APIs (e.g. permissions, camera, location, etc.)
One great benefit of this approach is that if there are breaking changes in any 3rd party APIs you use, you'll only have to update your repository code.

## Supported Features

-  Current weather (icon, date, condition and temperature)
-  5-day weather forecast
-  Search by city

## Packages in use

- riverpod for state management
- freezed for code generation of models
- http for communication with the REST API
- cached_network_image for caching images
- mocktail for testing

## About the OpenStreetMap weather API

The app is showing data from the following endpoints:

-  For Current Weather Data (https://openweathermap.org/current)
-  For Weather Fields in API Response (https://openweathermap.org/current#parameter)
-  For 5 day weather forecast (https://openweathermap.org/forecast5)
-  For Weather Conditions (https://openweathermap.org/weather-conditions)

**Note**: Set your api key via `--dart-define` or inside `lib/src/api/api_keys.dart`.

### [LICENSE: MIT](LICENSE.md)