import 'package:flutter/material.dart';

import 'icons/arrow_icon.dart';
import 'icons/location_icon.dart';
import 'location_infos/location_info.dart';

class LocationHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  LocationHeader({Key? key}) 
      : preferredSize = const Size.fromHeight(130.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFFFFF), Color.fromARGB(188, 140, 172, 149)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(80, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LocationIcon(),
                    SizedBox(width: 8),
                    LocationInfo(),
                    SizedBox(width: 4),
                    ArrowIcon(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}