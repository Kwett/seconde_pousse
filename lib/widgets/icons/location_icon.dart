import 'package:flutter/material.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
        Icons.place,
        color: Colors.black,
        size: 40,
    );
  }
}