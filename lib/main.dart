// // main.dart

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import './providers/air_quality_provider.dart';
// import './screens/home_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => AirQualityProvider(),
//       child: MaterialApp(
//         title: 'Air Quality Monitor',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: HomeScreen(),
//       ),
//     );
//   }
// }




import 'package:air_quality/screens/favorites_screen.dart';
import 'package:air_quality/screens/forecast_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'providers/air_quality_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AirQualityProvider(),
      child: MaterialApp(
        title: 'Air Quality Monitor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: HomeScreen(),
        initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/favorites': (context) => FavoritesScreen(),
        '/forecast': (context) => ForecastScreen(lat: 0, lon: 0), // Placeholder, not used directly
      },
      ),
    );
  }
}
