import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/statusImage.dart';
import 'package:weatherapp/widgets/tempWidget.dart';

class BottomTempCard extends StatelessWidget {
  const BottomTempCard({
    Key? key,
    required this.cardBkgColor,
    required this.cardTimeStamp,
    required this.cardForecast,
    required this.cardTempValue,
  }) : super(key: key);

  final Color cardBkgColor;
  final String cardTimeStamp;
  final String cardForecast;
  final int cardTempValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 130,
      decoration: BoxDecoration(
        color: cardBkgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(cardTimeStamp.toString()),
          StatusImage(
            forecast: cardForecast,
            size: 40,
            height: 40,
            weight: 40,
            margin: const EdgeInsets.all(12),
          ),
          TempWidget(
            temp: cardTempValue,
            fontSize: 28,
            color: Colors.grey.shade700,
          ),
        ],
      ),
    );
  }
}