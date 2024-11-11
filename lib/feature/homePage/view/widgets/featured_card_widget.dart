import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class FeatureCardWidget extends StatelessWidget {
  const FeatureCardWidget({
    super.key,
    required this.featuredScrollController,
  });

  final ScrollController featuredScrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          controller: featuredScrollController,
          scrollDirection: Axis.horizontal,
          itemCount: featuredItems.length,
          itemBuilder: (context, index) {
            final item = featuredItems[index];
            // return FeaturedCardWidget(item: item);
            return GestureDetector(
              onTap: () {
                context.push('/details', extra: item);
              },
              child: Container(
                width: 200,
                margin: const EdgeInsets.only(right: 16),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        'https://via.placeholder.com/200', // Replace with actual image URLs
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        "${item['title']}\n${item['location']}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
