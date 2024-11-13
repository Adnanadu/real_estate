import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppartmentFacilityWidget extends StatelessWidget {
  const AppartmentFacilityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Facilities',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          ///facility chip
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _facilityChip(Icons.local_parking, 'Car Parking'),
              _facilityChip(Icons.pool, 'Swimming Pool'),
              _facilityChip(Icons.fitness_center, 'Gym & Fitness'),
              _facilityChip(Icons.restaurant, 'Restaurant'),
              _facilityChip(Icons.wifi, 'Wi-Fi & Network'),
              _facilityChip(Icons.pets, 'Pet Center'),
              _facilityChip(Icons.sports_soccer, 'Sport Center'),
              _facilityChip(Icons.local_laundry_service, 'Laundry'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _facilityChip(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.blue, size: 32),
      const SizedBox(height: 4),
      Text(label, style: const TextStyle(fontSize: 12)),
    ],
  );
}
