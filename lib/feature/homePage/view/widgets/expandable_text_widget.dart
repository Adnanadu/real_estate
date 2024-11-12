import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExpandableTextWidget extends HookWidget {
  final String text;

  const ExpandableTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // useState hook to manage the expanded state
    final isExpanded = useState(false);

    // Define the short text with ellipsis
    final shortText = text.length > 100 ? '${text.substring(0, 100)}...' : text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display either the full text or the shortened text
        Text(
          isExpanded.value ? text : shortText,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            // Toggle the expanded state
            isExpanded.value = !isExpanded.value;
          },
          child: Text(
            isExpanded.value ? "Read Less" : "Read More",
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
