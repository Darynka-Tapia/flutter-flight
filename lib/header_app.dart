import 'package:flutter/material.dart';
import 'gradient_bar.dart';
import 'flight_departure.dart';

class HederApp extends StatelessWidget {
  const HederApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBar(),
        FlightDepature()
      ],
    );
  }
}