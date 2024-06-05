// import 'package:flutter/material.dart';
// import '../services/air_quality_forecast_service.dart';

// class ForecastScreen extends StatefulWidget {
//   final double lat;
//   final double lon;

//   ForecastScreen({required this.lat, required this.lon});

//   @override
//   _ForecastScreenState createState() => _ForecastScreenState();
// }

// class _ForecastScreenState extends State<ForecastScreen> {
//   late Future<List<Map<String, dynamic>>> _forecastData;

//   @override
//   void initState() {
//     super.initState();
//     _forecastData = AirQualityForecastService().fetchAirQualityForecast(widget.lat, widget.lon);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Forecast'),
//       ),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: _forecastData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error fetching forecast data: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No forecast data available'));
//           }

//           final forecastList = snapshot.data!;
//           return ListView.builder(
//             itemCount: forecastList.length,
//             itemBuilder: (context, index) {
//               final forecast = forecastList[index];
//               final dateTime = DateTime.fromMillisecondsSinceEpoch(forecast['dt'] * 1000);
//               final aqi = forecast['main']['aqi'];
//               final components = forecast['components'];
//               return Card(
//                 child: ListTile(
//                   title: Text('Date: ${dateTime.toLocal()}'),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('AQI: $aqi'),
//                       Text('CO: ${components['co']}'),
//                       Text('NO: ${components['no']}'),
//                       Text('NO2: ${components['no2']}'),
//                       Text('O3: ${components['o3']}'),
//                       Text('SO2: ${components['so2']}'),
//                       Text('PM2.5: ${components['pm2_5']}'),
//                       Text('PM10: ${components['pm10']}'),
//                       Text('NH3: ${components['nh3']}'),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Forecast',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//         currentIndex: 1, // Set the current index to 'Forecast'
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.pushNamed(context, '/home');
//           } else if (index == 2) {
//             Navigator.pushNamed(context, '/favorites');
//           }
//         },
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
// import '../services/air_quality_forecast_service.dart';

// class ForecastScreen extends StatefulWidget {
//   final double lat;
//   final double lon;

//   ForecastScreen({required this.lat, required this.lon});

//   @override
//   _ForecastScreenState createState() => _ForecastScreenState();
// }

// class _ForecastScreenState extends State<ForecastScreen> {
//   late Future<List<Map<String, dynamic>>> _forecastData;

//   @override
//   void initState() {
//     super.initState();
//     _forecastData = AirQualityForecastService().fetchAirQualityForecast(widget.lat, widget.lon);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Air Quality Forecast'),
//       ),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: _forecastData,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error fetching forecast data: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No forecast data available'));
//           }

//           final forecastList = snapshot.data!.take(28).toList(); // Take only the first 28 results
//           return GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 7, // 7 items per row
//               childAspectRatio: 0.5, // Adjust this ratio to fit your card design
//             ),
//             itemCount: forecastList.length,
//             itemBuilder: (context, index) {
//               final forecast = forecastList[index];
//               final dateTime = DateTime.fromMillisecondsSinceEpoch(forecast['dt'] * 1000);
//               final aqi = forecast['main']['aqi'];
//               final components = forecast['components'];
//               return Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Date: ${dateTime.toLocal()}',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         'AQI: $aqi',
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         'CO: ${components['co']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'NO: ${components['no']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'NO2: ${components['no2']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'O3: ${components['o3']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'SO2: ${components['so2']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'PM2.5: ${components['pm2_5']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'PM10: ${components['pm10']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       SizedBox(height: 2),
//                       Text(
//                         'NH3: ${components['nh3']}',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Forecast',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//         currentIndex: 1, // Set the current index to 'Forecast'
//         onTap: (index) {
//           if (index == 0) {
//             Navigator.pushNamed(context, '/home');
//           } else if (index == 2) {
//             Navigator.pushNamed(context, '/favorites');
//           }
//         },
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import '../services/air_quality_forecast_service.dart';

class ForecastScreen extends StatefulWidget {
  final double lat;
  final double lon;

  ForecastScreen({required this.lat, required this.lon});

  @override
  _ForecastScreenState createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  late Future<List<Map<String, dynamic>>> _forecastData;

  @override
  void initState() {
    super.initState();
    _forecastData = AirQualityForecastService().fetchAirQualityForecast(widget.lat, widget.lon);
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the number of items per row based on screen width
    double screenWidth = MediaQuery.of(context).size.width;
    int itemsPerRow = (screenWidth / 150).floor(); // Adjust the divisor to change item width

    return Scaffold(
      appBar: AppBar(
        title: Text('Air Quality Forecast'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _forecastData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching forecast data: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No forecast data available'));
          }

          final forecastList = snapshot.data!.take(28).toList(); // Take only the first 28 results
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: itemsPerRow, // Items per row based on screen width
              childAspectRatio: 0.75, // Adjust this ratio to fit your card design
            ),
            itemCount: forecastList.length,
            itemBuilder: (context, index) {
              final forecast = forecastList[index];
              final dateTime = DateTime.fromMillisecondsSinceEpoch(forecast['dt'] * 1000);
              final aqi = forecast['main']['aqi'];
              final components = forecast['components'];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date: ${dateTime.toLocal()}',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'AQI: $aqi',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'CO: ${components['co']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'NO: ${components['no']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'NO2: ${components['no2']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'O3: ${components['o3']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'SO2: ${components['so2']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'PM2.5: ${components['pm2_5']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'PM10: ${components['pm10']}',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'NH3: ${components['nh3']}',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
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
        currentIndex: 1, // Set the current index to 'Forecast'
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/favorites');
          }
        },
      ),
    );
  }
}
