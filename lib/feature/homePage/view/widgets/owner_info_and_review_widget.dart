
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/expandable_text_widget.dart';

class OwnerInfoAndOverViewWidget extends StatelessWidget {
  const OwnerInfoAndOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpandableTextWidget(
                  text:
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
            ],
          ),
        ),
      ],
    );
  }
}

