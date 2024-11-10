
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/pages/home_page.dart';

class ReccomendationCardWidget extends StatelessWidget {
  const ReccomendationCardWidget({
    super.key,
    required this.gridViewScrollController,
  });

  final ScrollController gridViewScrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        controller: gridViewScrollController,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: recommendationItems.length,
        itemBuilder: (context, index) {
          final item = recommendationItems[index];
          // return RecommendationCardWidget(item: item);
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://via.placeholder.com/150', // Replace with actual image URLs
                    fit: BoxFit.cover,
                    height: 100,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 8),
                Text(item['title'] as String,
                    style:
                        const TextStyle(fontWeight: FontWeight.bold)),
                Text(item['location'] as String,
                    style: const TextStyle(color: Colors.grey)),
                Text("\$${item['price']} / night",
                    style: const TextStyle(color: Colors.blue)),
              ],
            ),
          );
        },
      ),
    );
  }
}
