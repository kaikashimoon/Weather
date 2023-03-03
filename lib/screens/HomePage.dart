import 'package:flutter/material.dart';

import '../utils/map_values.dart';
import '../widgets/bottomTempCard.dart';
import '../widgets/iconTextBadge.dart';
import '../widgets/oneLineText.dart';
import '../widgets/statusImage.dart';
import '../widgets/tempWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: kLinearGradiantMap['sun'],
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const IconTextBadge(
                  location: 'Location',
                  icon: Icons.location_on,
                  isLocationBadge: true,
                ),
              ),
              const StatusImage(
                forecast: 'sun',
                size: 220.0,
                height: 150.0,
              ),
              const OneLineText(inputText: 'Status'),
              const TempWidget(temp: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  IconTextBadge(
                    location: '2km/h',
                    icon: Icons.wind_power,
                    isLocationBadge: false,
                  ),
                  SizedBox(width: 20),
                  IconTextBadge(
                    location: '68%',
                    icon: Icons.water_drop_outlined,
                    isLocationBadge: false,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: SizedBox(
                  width: 320,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomTempCard(
                        cardBkgColor: Colors.yellow.shade300,
                        cardForecast: 'rain',
                        cardTempValue: 12,
                        cardTimeStamp: '11:00 AM',
                      ),
                      BottomTempCard(
                        cardBkgColor: Colors.yellow.shade400,
                        cardForecast: 'cloud',
                        cardTempValue: 2,
                        cardTimeStamp: '11:00 AM',
                      ),
                      BottomTempCard(
                        cardBkgColor: Colors.yellow.shade600,
                        cardForecast: 'storm',
                        cardTempValue: -2,
                        cardTimeStamp: '11:00 AM',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/details');
        },
        child: const Icon(
          Icons.keyboard_arrow_right,
          size: 40,
        ),
      ),
    );
  }
}