import 'package:flutter/material.dart';

class BookingRealEstatePage extends StatelessWidget {
  const BookingRealEstatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Real Estate'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Select Date'),

            ///date picker
            // DatePickerWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Check In'),
                
                Text('Check Out'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
