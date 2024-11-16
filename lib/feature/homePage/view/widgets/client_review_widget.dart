import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/expandable_text_widget.dart';

class ClientReviewsWidget extends StatelessWidget {
  const ClientReviewsWidget({
    super.key,
    required this.isLiked,
  });
  final ValueNotifier<bool> isLiked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(child: Icon(Icons.person)),
          title: const Text('Client Name'),
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.blue, size: 14),
                SizedBox(width: 4),
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              ExpandableTextWidget(
                  text:
                      '''Lorem Ipsting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
              SizedBox(height: 8),
            ],
          ),
        ),
        Row(
          children: [
            ValueListenableBuilder<bool>(
              valueListenable: isLiked,
              builder: (context, value, child) {
                return IconButton(
                  onPressed: () {
                    isLiked.value = !isLiked.value;
                  },
                  icon: Icon(
                    value ? Icons.favorite : Icons.favorite_border_outlined,
                    color: value ? Colors.red : null,
                  ),
                );
              },
            ),
            const Text("LIKE COUNT HERE"),
            const SizedBox(width: 4),
            const Text("6 days ago"),
          ],
        ),
      ],
    );
  }
}
