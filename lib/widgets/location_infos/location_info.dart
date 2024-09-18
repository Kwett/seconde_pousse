import 'package:flutter/material.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

    @override
    Widget build(BuildContext context) {
      return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
            'Jumonville',
            style: TextStyle(
              fontFamily: 'NotoSerifJP',
              fontSize: 24,
              fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 1),
            Text(
              'à moins de 10km',
              style: TextStyle(
                fontFamily: 'NotoSerifJP',
                fontSize: 10,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        );
    }
}