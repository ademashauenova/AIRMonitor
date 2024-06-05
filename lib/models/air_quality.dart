class AirQuality {
  final String city;
  final String state;
  final String country;
  final double aqi;
  final String mainPollutant;
  final String healthRecommendations;
  final String weatherIcon;  // Add this line

  AirQuality({
    required this.city,
    required this.state,
    required this.country,
    required this.aqi,
    required this.mainPollutant,
    required this.healthRecommendations,
    required this.weatherIcon,  // Add this line
  });

  factory AirQuality.fromJson(Map<String, dynamic> json) {
    return AirQuality(
      city: json['city'] ?? 'Unknown City',
      state: json['state'],
      country: json['country'] ?? 'Unknown Country',
      aqi: (json['current']['pollution']['aqius'] as num).toDouble(),
      mainPollutant: json['current']['pollution']['mainus'] ?? 'Unknown Pollutant',
      healthRecommendations: _getHealthRecommendations((json['current']['pollution']['aqius'] as num).toDouble()),
      weatherIcon: json['current']['weather']['ic'] ?? '01d',  // Add this line
    );
  }

  static String _getHealthRecommendations(double aqi) {
    if (aqi <= 50) {
      return 'Air quality is good.';
    } else if (aqi <= 100) {
      return 'Air quality is moderate.';
    } else if (aqi <= 150) {
      return 'Unhealthy for sensitive groups.';
    } else if (aqi <= 200) {
      return 'Unhealthy.';
    } else if (aqi <= 300) {
      return 'Very unhealthy.';
    } else {
      return 'Hazardous.';
    }
  }
}
