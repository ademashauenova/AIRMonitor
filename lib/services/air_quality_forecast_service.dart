import 'dart:convert';
import 'package:http/http.dart' as http;

class AirQualityForecastService {
  static const String _apiKey = '2448beca9400d4c1e0c72997e2fa8b57';
  static const String _baseUrl = 'http://api.openweathermap.org/data/2.5/air_pollution/forecast';

  Future<List<Map<String, dynamic>>> fetchAirQualityForecast(double lat, double lon) async {
    final response = await http.get(Uri.parse('$_baseUrl?lat=$lat&lon=$lon&appid=$_apiKey'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(data['list']);
    } else {
      throw Exception('Failed to load air quality forecast data');
    }
  }
}
