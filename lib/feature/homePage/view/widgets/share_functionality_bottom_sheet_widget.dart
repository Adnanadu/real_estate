import 'package:flutter/material.dart';

class ShareBottomSheetWidget extends StatelessWidget {
  const ShareBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 200,
          width: double.infinity,
          color: Colors.white,
          child: const Column(
            children: [
              Text('Share'),
            ],
          ),
        );
  }
}
