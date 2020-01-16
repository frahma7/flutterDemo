import 'location.dart';
import 'networking.dart';

const weatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = '7d68d0620a4f28f8ab8e93f4d6b42fa3';

class WeatherModel {
  Future<dynamic> getCityWeatherData(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$weatherMapURL?q=$cityName&appid=$apiKey&units=imperial');
    var weatherData =
        await networkHelper.getHttpResponse(); //get weather based on location
    return weatherData;
  }

  Future<dynamic> getLocationWeatherData() async {
    Location location = Location();
    await location.getCurrentLocation(); //get location
    NetworkHelper networkHelper = NetworkHelper(
        '$weatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=imperial');
    var weatherData =
        await networkHelper.getHttpResponse(); //get weather based on location
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 80) {
      return 'It\'s 🍦 time';
    } else if (temp > 70) {
      return 'Time for shorts and 👕';
    } else if (temp < 50) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
