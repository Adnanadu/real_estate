import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentDetailsPage extends HookWidget {
  const ApartmentDetailsPage({super.key, required Map<String, dynamic> item});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageHeader(size),
            _buildApartmentInfo(),
            _buildOverview(),
            _buildFacilities(),
            _buildGallery(),
            _buildLocation(),
            _buildReviews(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBookingButton(),
    );
  }

  Widget _buildImageHeader(Size size) {
    return Stack(
      children: [
        // Background Image
        SizedBox(
          width: size.width,
          height: 300,
          child: Image.network(
            'https://your-image-url.com',
            fit: BoxFit.cover,
          ),
        ),
        // Icons
        const Positioned(
          top: 40,
          left: 16,
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        const Positioned(
          top: 40,
          right: 60,
          child: Icon(Icons.favorite_border, color: Colors.white),
        ),
        const Positioned(
          top: 40,
          right: 16,
          child: Icon(Icons.share, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildApartmentInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Modernica Apartment',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('Apartment',
                    style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.star, color: Colors.orange, size: 20),
              const Text('4.8 (1,275 reviews)'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _infoChip(Icons.bed, '8 Beds'),
              _infoChip(Icons.bathtub, '3 Bath'),
              _infoChip(Icons.square_foot, '2000 sqft'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoChip(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }

  Widget _buildOverview() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text('Read more...',
                style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }

  Widget _buildFacilities() {
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

  Widget _buildGallery() {
    // Add your gallery implementation here
    return Container();
  }

  Widget _buildLocation() {
    // Add your location map implementation here
    return Container();
  }

  Widget _buildReviews() {
    // Add your reviews implementation here
    return Container();
  }

  Widget _buildBookingButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Booking Now',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
