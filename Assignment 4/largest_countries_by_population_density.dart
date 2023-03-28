void main() {
  Map<String, Map<String, double>> countries = {
    'China': {'population': 1393.8, 'area': 9.6},
    'India': {'population': 1366.4, 'area': 3.3},
    'United States': {'population': 329.5, 'area': 9.8},
    'Indonesia': {'population': 270.6, 'area': 1.9},
    'Pakistan': {'population': 216.6, 'area': 0.8},
    'Brazil': {'population': 211.8, 'area': 8.5},
    'Nigeria': {'population': 200.9, 'area': 0.9},
    'Bangladesh': {'population': 167.1, 'area': 0.1},
    'Russia': {'population': 146.7, 'area': 17.1},
    'Mexico': {'population': 126.5, 'area': 1.9},
  };

  List<MapEntry<String, double>> sortedCountries = countries.entries
      .map((entry) => MapEntry(entry.key, entry.value['population']! / entry.value['area']!))
      .toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  List<MapEntry<String, double>> top5Countries = sortedCountries.sublist(0, 5);

  print('The top 5 largest countries by population density are:');
  top5Countries.forEach((entry) => print('${entry.key}: ${entry.value.toStringAsFixed(2)} people per square unit.'));
}
