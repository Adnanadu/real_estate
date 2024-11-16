import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClientReviewPage extends HookWidget {
  const ClientReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Review'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              
            )
          ],
        ),
      ),
    );
  }
}
