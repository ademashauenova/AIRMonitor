// // services/air_quality_service.dart


// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/air_quality.dart';

// class AirQualityService {
//   static const String _apiKey = 'bead198b-28f6-444a-85ce-a3580add8b56';
//   static const String _baseUrl = 'http://api.airvisual.com/v2/nearest_city?key=bead198b-28f6-444a-85ce-a3580add8b56';

//   Future<AirQuality> fetchAirQuality(double lat, double lon) async {
//     final response = await http.get(Uri.parse(
//         '$_baseUrl/nearest_city?lat=$lat&lon=$lon&key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       print("Data fetched successfully: $data"); // Debugging
//       return AirQuality.fromJson(data['data']);
//     } else {
//       print("Failed to load air quality data: ${response.statusCode} ${response.body}"); // Debugging
//       throw Exception('Failed to load air quality data');
//     }
//   }
// }












// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/air_quality.dart';

// class AirQualityService {
//   static const String _apiKey = 'bead198b-28f6-444a-85ce-a3580add8b56';
//   static const String _baseUrl = 'http://api.airvisual.com/v2/nearest_city';

//   Future<AirQuality> fetchAirQuality(double lat, double lon) async {
//     final response = await http.get(Uri.parse(
//         '$_baseUrl?lat=$lat&lon=$lon&key=$_apiKey'));

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       print("Data fetched successfully: $data"); // Debugging
//       return AirQuality.fromJson(data['data']);
//     } else {
//       print("Failed to load air quality data: ${response.statusCode} ${response.body}"); // Debugging
//       throw Exception('Failed to load air quality data');
//     }
//   }
// }







import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/air_quality.dart';

class AirQualityService {
  static const String _apiKey = 'bead198b-28f6-444a-85ce-a3580add8b56';
  static const String _baseUrl = 'http://api.airvisual.com/v2';

  Future<AirQuality> fetchAirQuality(double lat, double lon) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl/nearest_city?lat=$lat&lon=$lon&key=$_apiKey'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AirQuality.fromJson(data['data']);
    } else {
      throw Exception('Failed to load air quality data');
    }
  }

  Future<AirQuality> fetchAirQualityByCity(String city, String state, String country) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl/city?city=$city&state=$state&country=$country&key=$_apiKey'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return AirQuality.fromJson(data['data']);
    } else {
      throw Exception('Failed to load air quality data');
    }
  }
}
