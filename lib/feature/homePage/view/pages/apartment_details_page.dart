import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/appartment_facility_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/appartment_image_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/appartment_mini_gallery_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/building_location_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/client_review_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/owner_info_and_review_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentDetailsPage extends HookWidget {
  const ApartmentDetailsPage({super.key, required Map<String, dynamic> item});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);

    final double screenwidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ///apartment images
          AppartmentImageWidgets(
              screenwidth: screenwidth,
              pageController: pageController,
              currentPage: currentPage),

          // ///apartment info
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Modernica Apartment',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bed,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8),
                        Text('8 Beds'),
                        SizedBox(width: 8),
                        Icon(
                          Icons.bathtub,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8),
                        Text('3 bath'),
                        SizedBox(width: 8),
                        Icon(
                          Icons.square_foot,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 8),
                        Text('2000 sqft'),
                        SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey.shade300,
              height: 1,
            ),
          ),

          ///owner info
          const OwnerInfoAndOverViewWidget(),

          ///facilities
          const AppartmentFacilityWidget(),
          // Add your gallery implementation here
          const AppartmentMiniGalleryWidget(),
// Building Location Here
          const BuildingLocationWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 20),
                    Text('4.8 (1,275 reviews)'),
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('See All')),
              ],
            ),
          ),

          // Add your reviews implementation here
          const ClientReviewsWidget(),

          Container(),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          // color: Colors.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border(
            top: BorderSide(color: Color(0xFFe0e0e0)),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'price',
                ),
                const SizedBox(height: 2),
                RichText(
                  text: const TextSpan(
                    text: '\$ 250',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: ' / night',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: const Text("Book Now")),
          ],
        ),
      ),
    );
  }
}
