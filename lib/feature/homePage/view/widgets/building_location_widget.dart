
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildingLocationWidget extends StatelessWidget {
  const BuildingLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Add your location map implementation here
          Container(),
        ],
      ),
    );
  }
}
