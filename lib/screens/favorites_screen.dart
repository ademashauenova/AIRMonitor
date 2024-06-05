// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class FavoritesScreen extends StatefulWidget {
//   @override
//   _FavoritesScreenState createState() => _FavoritesScreenState();
// }

// class _FavoritesScreenState extends State<FavoritesScreen> {
//   List<String> favoriteLocations = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadFavoriteLocations();
//   }

//   Future<void> _loadFavoriteLocations() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       favoriteLocations = prefs.getStringList('favoriteLocations') ?? [];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorite Locations'),
//       ),
//       body: favoriteLocations.isEmpty
//           ? Center(child: Text('No favorite locations found'))
//           : ListView.builder(
//               itemCount: favoriteLocations.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(favoriteLocations[index]),
//                   // Add onTap callback to handle selection if needed
//                 );
//               },
//             ),
//     );
//   }
// }








import 'package:air_quality/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<String> favoriteLocations = [];

  @override
  void initState() {
    super.initState();
    _loadFavoriteLocations();
  }

  Future<void> _loadFavoriteLocations() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteLocations = prefs.getStringList('favoriteLocations') ?? [];
    });
  }

  Future<void> _saveFavoriteLocations() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setStringList('favoriteLocations', favoriteLocations);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Locations'),
      ),
      body: favoriteLocations.isEmpty
          ? Center(child: Text('No favorite locations found'))
          : ListView.builder(
              itemCount: favoriteLocations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        favoriteLocations[index],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Implement logic to remove location from favorites
    setState(() {
      favoriteLocations.removeAt(index);
    });
    // Update shared preferences
    _saveFavoriteLocations();
                        },
                      ),
                      onTap: () {
                        // Implement navigation to location details screen
                      },
                    ),
                  ),
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
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.blueAccent,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
              break;
            case 1:
              Navigator.pushNamed(context, '/search');
              break;
            case 2:
              // No action needed since we are already on the Favorites screen
              break;
          }
        },
      ),
    );
  }
}









// import 'package:air_quality/screens/home_screen.dart';
// import 'package:flutter/material.dart';

// class FavoritesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final List<String> favoriteLocations = []; // Replace with actual list of favorite locations
//     print('Favorite Locations: $favoriteLocations');

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorite Locations'),
//       ),
//       body: ListView.builder(
//         itemCount: favoriteLocations.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.location_city), // Icon for location
//                 title: Text(favoriteLocations[index]), // Location name
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete), // Delete button
//                   onPressed: () {
//                     // Implement logic to remove location from favorites
//                     // For example:
//                     // favoriteLocations.removeAt(index);
//                     // setState(() {});
//                   },
//                 ),
//                 onTap: () {
//                   // Implement navigation to location details screen
//                 },
//               ),
//             ),
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
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//         currentIndex: 2,
//         selectedItemColor: Colors.blueAccent,
//         onTap: (index) {
//     switch (index) {
//       case 0:
//         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
//         break;
//       case 1:
//         // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SearchScreen()));
//         break;
//       case 2:
//         // No action needed since we are already on the Favorites screen
//         break;
//     }
//   },
//       ),
//     );
//   }
// }
