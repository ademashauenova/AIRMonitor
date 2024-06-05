// // screens/home_screen.dart

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/air_quality_provider.dart';
// import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       return Future.error('Location permissions are permanently denied.');
//     }

//     final position = await Geolocator.getCurrentPosition();
//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQuality(position.latitude, position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final airQualityProvider = Provider.of<AirQualityProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Monitor'),
//       ),
//       body: airQualityProvider.isLoading
//           ? Center(child: CircularProgressIndicator())
//           : airQualityProvider.currentAirQuality == null
//               ? Center(child: Text('No data available'))
//               : Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'City: ${airQualityProvider.currentAirQuality!.city}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Country: ${airQualityProvider.currentAirQuality!.country}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         'Health Recommendations:',
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         airQualityProvider.currentAirQuality!.healthRecommendations,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }
// }










// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/air_quality_provider.dart';
// import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print("Location services are disabled."); // Debugging
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print("Location permissions are denied."); // Debugging
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       print("Location permissions are permanently denied."); // Debugging
//       return Future.error('Location permissions are permanently denied.');
//     }

//     final position = await Geolocator.getCurrentPosition();
//     print("Current Position: $position"); // Debugging
//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQuality(position.latitude, position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final airQualityProvider = Provider.of<AirQualityProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Monitor'),
//       ),
//       body: airQualityProvider.isLoading
//           ? Center(child: CircularProgressIndicator())
//           : airQualityProvider.currentAirQuality == null
//               ? Center(child: Text('No data available'))
//               : Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'City: ${airQualityProvider.currentAirQuality!.city}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Country: ${airQualityProvider.currentAirQuality!.country}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         'Health Recommendations:',
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         airQualityProvider.currentAirQuality!.healthRecommendations,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/air_quality_provider.dart';
// import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print("Location services are disabled."); // Debugging
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print("Location permissions are denied."); // Debugging
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       print("Location permissions are permanently denied."); // Debugging
//       return Future.error('Location permissions are permanently denied.');
//     }

//     final position = await Geolocator.getCurrentPosition();
//     print("Current Position: $position"); // Debugging
//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQuality(position.latitude, position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final airQualityProvider = Provider.of<AirQualityProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Monitor'),
//       ),
//       body: airQualityProvider.isLoading
//           ? Center(child: CircularProgressIndicator())
//           : airQualityProvider.currentAirQuality == null
//               ? Center(child: Text('No data available'))
//               : Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset('${airQualityProvider.currentAirQuality!.weatherIcon}.png'),
//                       Text(
//                         'City: ${airQualityProvider.currentAirQuality!.city}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Country: ${airQualityProvider.currentAirQuality!.country}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       Text(
//                         'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         'Health Recommendations:',
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         airQualityProvider.currentAirQuality!.healthRecommendations,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }
// }









// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/air_quality_provider.dart';
// import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final _cityController = TextEditingController();
//   final _stateController = TextEditingController();
//   final _countryController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print("Location services are disabled."); // Debugging
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print("Location permissions are denied."); // Debugging
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       print("Location permissions are permanently denied."); // Debugging
//       return Future.error('Location permissions are permanently denied.');
//     }

//     final position = await Geolocator.getCurrentPosition();
//     print("Current Position: $position"); // Debugging
//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQuality(position.latitude, position.longitude);
//   }

//   Future<void> _searchAirQuality() async {
//     final city = _cityController.text.trim();
//     final state = _stateController.text.trim();
//     final country = _countryController.text.trim();

//     if (city.isEmpty || state.isEmpty || country.isEmpty) {
//       print("Please enter valid city, state, and country.");
//       return;
//     }

//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQualityByCity(city, state, country);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final airQualityProvider = Provider.of<AirQualityProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Monitor'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _cityController,
//               decoration: InputDecoration(labelText: 'City'),
//             ),
//             TextField(
//               controller: _stateController,
//               decoration: InputDecoration(labelText: 'State'),
//             ),
//             TextField(
//               controller: _countryController,
//               decoration: InputDecoration(labelText: 'Country'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _searchAirQuality,
//               child: Text('Search'),
//             ),
//             Expanded(
//               child: airQualityProvider.isLoading
//                   ? Center(child: CircularProgressIndicator())
//                   : airQualityProvider.currentAirQuality == null
//                       ? Center(child: Text('No data available'))
//                       : Padding(
//                           padding: const EdgeInsets.all(16.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Image.asset('${airQualityProvider.currentAirQuality!.weatherIcon}.png'),
//                               Text(
//                                 'City: ${airQualityProvider.currentAirQuality!.city}',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               Text(
//                                 'Country: ${airQualityProvider.currentAirQuality!.country}',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               Text(
//                                 'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               Text(
//                                 'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               SizedBox(height: 20),
//                               Text(
//                                 'Health Recommendations:',
//                                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 airQualityProvider.currentAirQuality!.healthRecommendations,
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'favorites_screen.dart';
import 'forecast_screen.dart';
import '../providers/air_quality_provider.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();
  int _selectedIndex = 0;
  double? currentLat;
  double? currentLon;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  // Future<void> _getCurrentLocation() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     print("Location services are disabled.");
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       print("Location permissions are denied.");
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     print("Location permissions are permanently denied.");
  //     return Future.error('Location permissions are permanently denied.');
  //   }

  //   final position = await Geolocator.getCurrentPosition();
  //   print("Current Position: $position");
  //   currentLat = position.latitude;
  //   currentLon = position.longitude;
  //   Provider.of<AirQualityProvider>(context, listen: false)
  //       .fetchAirQuality(currentLat!, currentLon!);
  // }

  Future<void> _getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    print("Location services are disabled.");
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print("Location permissions are denied.");
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    print("Location permissions are permanently denied.");
    return Future.error('Location permissions are permanently denied.');
  }

  final position = await Geolocator.getCurrentPosition();
  print("Current Position: $position");
  setState(() {
    currentLat = position.latitude;
    currentLon = position.longitude;
  });
  Provider.of<AirQualityProvider>(context, listen: false)
      .fetchAirQuality(currentLat!, currentLon!);
}


  Future<void> _searchAirQuality() async {
    final city = _cityController.text.trim();
    final state = _stateController.text.trim();
    final country = _countryController.text.trim();

    if (city.isEmpty || state.isEmpty || country.isEmpty) {
      print("Please enter valid city, state, and country.");
      return;
    }

    Provider.of<AirQualityProvider>(context, listen: false)
        .fetchAirQualityByCity(city, state, country);
  }

  void _saveToFavorites() async {
    final airQualityProvider = Provider.of<AirQualityProvider>(context, listen: false);

    final currentLocation = airQualityProvider.currentAirQuality;
    if (currentLocation != null && currentLocation.city.isNotEmpty) {
      final locationString =
          '${currentLocation.city}, ${currentLocation.state}, ${currentLocation.country}';

      final prefs = await SharedPreferences.getInstance();
      final favoriteLocations = prefs.getStringList('favoriteLocations') ?? [];
      if (!favoriteLocations.contains(locationString)) {
        favoriteLocations.add(locationString);
        await prefs.setStringList('favoriteLocations', favoriteLocations);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('This city is already in favorites')),
        );
      }
    }
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });

  //   switch (_selectedIndex) {
  //     case 0:
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
  //       break;
  //     case 1:
  //       if (currentLat != null && currentLon != null) {
  //         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ForecastScreen(lat: currentLat!, lon: currentLon!)));
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text('Location not available')),
  //         );
  //       }
  //       break;
  //     case 2:
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => FavoritesScreen()));
  //       break;
  //     default:
  //       break;
  //   }
  // }



  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

  switch (_selectedIndex) {
    case 0:
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
      break;
    case 1:
      if (currentLat != null && currentLon != null) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ForecastScreen(lat: currentLat!, lon: currentLon!)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location not available')),
        );
      }
      break;
    case 2:
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => FavoritesScreen()));
      break;
    default:
      break;
  }
}


  @override
  Widget build(BuildContext context) {
    final airQualityProvider = Provider.of<AirQualityProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Air Quality Monitor'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _stateController,
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _countryController,
              decoration: InputDecoration(
                labelText: 'Country',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _searchAirQuality,
              child: Text('Search'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            Expanded(
              child: airQualityProvider.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : airQualityProvider.currentAirQuality == null
                      ? Center(child: Text('No data available'))
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 80, 
                                    child: Image.asset(
                                      '${airQualityProvider.currentAirQuality!.weatherIcon}.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: AQIColors.getAQIColor(airQualityProvider.currentAirQuality!.aqi as int),
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          'City: ${airQualityProvider.currentAirQuality!.city}',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'Country: ${airQualityProvider.currentAirQuality!.country}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Health Recommendations:',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          airQualityProvider.currentAirQuality!.healthRecommendations,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _saveToFavorites,
                  child: Text('Save to Favorites'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentLat != null && currentLon != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForecastScreen(
                            lat: currentLat!,
                            lon: currentLon!,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Location not available')),
                      );
                    }
                  },
                  child: Text('View Forecast'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Forecast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}











// import 'package:air_quality/screens/favorites_screen.dart';
// import 'package:air_quality/screens/forecast_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/air_quality_provider.dart';
// import 'package:geolocator/geolocator.dart';
// import '../utils/colors.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final _cityController = TextEditingController();
//   final _stateController = TextEditingController();
//   final _countryController = TextEditingController();
//   int _selectedIndex = 0;
//   double? currentLat;
//   double? currentLon;


//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print("Location services are disabled.");
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print("Location permissions are denied.");
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       print("Location permissions are permanently denied.");
//       return Future.error('Location permissions are permanently denied.');
//     }

//     final position = await Geolocator.getCurrentPosition();
//     print("Current Position: $position");
//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQuality(position.latitude, position.longitude);
//   }

//   Future<void> _searchAirQuality() async {
//     final city = _cityController.text.trim();
//     final state = _stateController.text.trim();
//     final country = _countryController.text.trim();

//     if (city.isEmpty || state.isEmpty || country.isEmpty) {
//       print("Please enter valid city, state, and country.");
//       return;
//     }

//     Provider.of<AirQualityProvider>(context, listen: false)
//         .fetchAirQualityByCity(city, state, country);
//   }


//   void _saveToFavorites() async {
//   final airQualityProvider = Provider.of<AirQualityProvider>(context, listen: false);

//   final currentLocation = airQualityProvider.currentAirQuality;
//   if (currentLocation != null && currentLocation.city.isNotEmpty) {
//     final locationString =
//         '${currentLocation.city}, ${currentLocation.state}, ${currentLocation.country}';

//     final prefs = await SharedPreferences.getInstance();
//     final favoriteLocations =
//         prefs.getStringList('favoriteLocations') ?? [];
//     if (!favoriteLocations.contains(locationString)) {
//       favoriteLocations.add(locationString);
//       await prefs.setStringList('favoriteLocations', favoriteLocations);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('This city is already in favorites')),
//       );
//     }
//   }
// }




//   void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });

//   switch (_selectedIndex) {
//     case 0:
//       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
//       break;
//     case 1:
//       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ForecastScreen()));
//       break;
//     case 2:
//       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => FavoritesScreen()));
//       break;
//     default:
//       // Handle other cases if needed
//       break;
//   }
// }




//   @override
//   Widget build(BuildContext context) {
//     final airQualityProvider = Provider.of<AirQualityProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Monitor'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _cityController,
//               decoration: InputDecoration(
//                 labelText: 'City',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _stateController,
//               decoration: InputDecoration(
//                 labelText: 'State',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: _countryController,
//               decoration: InputDecoration(
//                 labelText: 'Country',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _searchAirQuality,
//               child: Text('Search'),
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
//             ),
//             Expanded(
//               child: airQualityProvider.isLoading
//                   ? Center(child: CircularProgressIndicator())
//                   : airQualityProvider.currentAirQuality == null
//                       ? Center(child: Text('No data available'))
//                       : Padding(
//                           padding: const EdgeInsets.all(16.0),
//                           child: Card(
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10.0),
//   ),
//   elevation: 5,
//   child: Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Row(
//       children: [
//         // Weather icon on the left
//         SizedBox(
//           width: 50, // Adjust the width as needed
//           child: Image.asset(
//             '${airQualityProvider.currentAirQuality!.weatherIcon}.png',
//             width: 40,
//             height: 40,
//           ),
//         ),
//         SizedBox(width: 20), // Spacer between icon and data
//         // Air quality data on the right
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'City: ${airQualityProvider.currentAirQuality!.city}',
//                 style: TextStyle(fontSize: 18),
//               ),
//               Text(
//                 'Country: ${airQualityProvider.currentAirQuality!.country}',
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Health Recommendations:',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 airQualityProvider.currentAirQuality!.healthRecommendations,
//                 style: TextStyle(fontSize: 14),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),

//                           // child: Card(
//                           //   shape: RoundedRectangleBorder(
//                           //     borderRadius: BorderRadius.circular(10.0),
//                           //   ),
//                           //   elevation: 5,
//                           //   child: Container(
//                           //     padding: const EdgeInsets.all(16.0),
//                           //     color: AQIColors.getAQIColor(airQualityProvider.currentAirQuality!.aqi as int),
//                           //     child: Column(
//                           //       mainAxisAlignment: MainAxisAlignment.center,
//                           //       crossAxisAlignment: CrossAxisAlignment.start,
//                           //       children: [
//                           //         Center(
//                           //           child: Image.asset(
//                           //             '${airQualityProvider.currentAirQuality!.weatherIcon}.png',
//                           //             width: 100,
//                           //             height: 100,
//                           //           ),
//                           //         ),
//                           //         SizedBox(height: 10),
//                           //         Text(
//                           //           'City: ${airQualityProvider.currentAirQuality!.city}',
//                           //           style: TextStyle(fontSize: 24, color: Colors.white),
//                           //         ),
//                           //         Text(
//                           //           'Country: ${airQualityProvider.currentAirQuality!.country}',
//                           //           style: TextStyle(fontSize: 20, color: Colors.white),
//                           //         ),
//                           //         Text(
//                           //           'AQI: ${airQualityProvider.currentAirQuality!.aqi}',
//                           //           style: TextStyle(fontSize: 20, color: Colors.white),
//                           //         ),
//                           //         Text(
//                           //           'Main Pollutant: ${airQualityProvider.currentAirQuality!.mainPollutant}',
//                           //           style: TextStyle(fontSize: 20, color: Colors.white),
//                           //         ),
//                           //         SizedBox(height: 20),
//                           //         Text(
//                           //           'Health Recommendations:',
//                           //           style: TextStyle(
//                           //             fontSize: 20,
//                           //             fontWeight: FontWeight.bold,
//                           //             color: Colors.white,
//                           //           ),
//                           //         ),
//                           //         Text(
//                           //           airQualityProvider.currentAirQuality!.healthRecommendations,
//                           //           style: TextStyle(fontSize: 16, color: Colors.white),
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           // ),
//                         ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _saveToFavorites,
//               child: Text('Save to Favorites'),
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white, 
//                 backgroundColor: Colors.blueAccent,
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blueAccent,
//         onTap: _onItemTapped,
//       ),
//     );
//   }

  
// }