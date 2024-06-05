// // providers/air_quality_provider.dart

// import 'package:flutter/material.dart';
// import '../models/air_quality.dart';
// import '../services/air_quality_service.dart';

// class AirQualityProvider with ChangeNotifier {
//   AirQuality? _currentAirQuality;
//   bool _isLoading = false;

//   AirQuality? get currentAirQuality => _currentAirQuality;
//   bool get isLoading => _isLoading;

//   Future<void> fetchAirQuality(double lat, double lon) async {
//     _isLoading = true;
//     notifyListeners();

//     try {
//       _currentAirQuality = await AirQualityService().fetchAirQuality(lat, lon);
//     } catch (error) {
//       print(error);
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }









// import 'package:flutter/material.dart';
// import '../models/air_quality.dart';
// import '../services/air_quality_service.dart';

// class AirQualityProvider with ChangeNotifier {
//   AirQuality? _currentAirQuality;
//   bool _isLoading = false;

//   AirQuality? get currentAirQuality => _currentAirQuality;
//   bool get isLoading => _isLoading;

//   Future<void> fetchAirQuality(double lat, double lon) async {
//     _isLoading = true;
//     notifyListeners();

//     try {
//       _currentAirQuality = await AirQualityService().fetchAirQuality(lat, lon);
//       print("Current Air Quality: $_currentAirQuality"); // Debugging
//     } catch (error) {
//       print("Error fetching air quality data: $error"); // Debugging
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }






// import 'package:flutter/material.dart';
// import '../models/air_quality.dart';
// import '../services/air_quality_service.dart';

// class AirQualityProvider with ChangeNotifier {
//   AirQuality? _currentAirQuality;
//   bool _isLoading = false;

//   AirQuality? get currentAirQuality => _currentAirQuality;
//   bool get isLoading => _isLoading;

//   Future<void> fetchAirQuality(double lat, double lon) async {
//     _isLoading = true;
//     notifyListeners();

//     try {
//       _currentAirQuality = await AirQualityService().fetchAirQuality(lat, lon);
//       print("Current Air Quality: $_currentAirQuality"); // Debugging
//     } catch (error) {
//       print("Error fetching air quality data: $error"); // Debugging
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }







import 'package:flutter/material.dart';
import '../models/air_quality.dart';
import '../services/air_quality_service.dart';

class AirQualityProvider with ChangeNotifier {
  AirQuality? _currentAirQuality;
  bool _isLoading = false;

  AirQuality? get currentAirQuality => _currentAirQuality;
  bool get isLoading => _isLoading;

  Future<void> fetchAirQuality(double lat, double lon) async {
    _isLoading = true;
    notifyListeners();

    try {
      _currentAirQuality = await AirQualityService().fetchAirQuality(lat, lon);
    } catch (error) {
      print("Error fetching air quality data: $error");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchAirQualityByCity(String city, String state, String country) async {
    _isLoading = true;
    notifyListeners();

    try {
      _currentAirQuality = await AirQualityService().fetchAirQualityByCity(city, state, country);
    } catch (error) {
      print("Error fetching air quality data: $error"); // Debugging
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
