import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/share_functionality_bottom_sheet_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
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
          Stack(children: [
            SizedBox(
              width: screenwidth,
              height: 300,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  currentPage.value = index;
                },
                children: [
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: currentPage.value == index ? 30 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: currentPage.value == index
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: 45,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back_outlined)),
                    const Spacer(),
                    IconButton(
                        onPressed: () async {
                          ///favorite page
                        },
                        icon: const Icon(Icons.favorite_border)),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.black),
                      onPressed: () async {
                        /// share via multi-media Bottom Sheet
                        showModalBottomSheet(
                            context: context,
                            builder: (context) =>
                                const ShareBottomSheetWidget());
                      },
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          ]),

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
                        SizedBox(width: 4),
                        Text('8 Beds'),
                        Icon(
                          Icons.bathtub,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 4),
                        Text('8 Beds'),
                        Icon(
                          Icons.square_foot,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 4),
                        Text('8 Beds'),
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
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text('Owner Name'),
            subtitle: const Text('Owner'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon(Icons.message),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message_outlined,
                      color: Colors.blue.shade300,
                    )),
                const SizedBox(width: 8),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call_outlined,
                      color: Colors.blue.shade300,
                    )),
              ],
            ),
          ),

          ///overview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
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
          ),

          ///facilities
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Facilities',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
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
          ),

          // Add your gallery implementation here
          Container(),

          // Add your location map implementation here
          Container(),

          // Add your reviews implementation here
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
