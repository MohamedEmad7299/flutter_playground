import 'package:flutter/material.dart';
import 'package:flutter_playground/riverpod_tasks/weather_screen/weather_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherScreen extends ConsumerWidget {

  final Map<Country, WeatherRequest> countries = {
    Country.yemen: WeatherRequest(
      q: "Yemen ", // ✅ city name
      apiKey: '22beecaba9e247ff85013126202207',
    ),
    Country.egypt: WeatherRequest(
      q: "Giza", // ✅ city name
      apiKey: '22beecaba9e247ff85013126202207',
    ),
  };

  WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(countryProvider);
    final weatherResponse = ref.watch(
      weatherProvider(countries[selectedCountry]!),
    );

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SegmentedButton<Country>(
              segments: const [
                ButtonSegment(
                  value: Country.egypt,
                  label: Text("Egypt"),
                  icon: Icon(Icons.location_on),
                ),
                ButtonSegment(
                  value: Country.yemen,
                  label: Text("Yemen"),
                  icon: Icon(Icons.location_on),
                ),
              ],
              selected: {selectedCountry},
              onSelectionChanged: (newSelection) {
                ref.watch(countryProvider.notifier).state = newSelection.first;
              },
            ),
            const SizedBox(height: 20),
            weatherResponse.when(
              data: (data) {
                return Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [
                      WeatherCard(
                        icon: Icons.thermostat,
                        title: "Temperature",
                        value: "${data.currentWeather.tempC.toString()}°C",
                        color: Colors.redAccent,
                      ),
                      WeatherCard(
                        icon: Icons.water_drop,
                        title: "Humidity",
                        value: "${data.currentWeather.humidity}%",
                        color: Colors.blue,
                      ),
                      WeatherCard(
                        icon: Icons.air,
                        title: "Wind",
                        value: "${data.currentWeather.windkph} km/h",
                        color: Colors.green,
                      ),
                      WeatherCard(
                        icon: Icons.wb_sunny,
                        title: "Condition",
                        value: data.currentWeather.condition.text,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Expanded(
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => Expanded(
                child: Center(
                  child: Text(
                    "Error: $error",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const WeatherCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
