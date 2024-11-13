import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/share_functionality_bottom_sheet_widget.dart';
import 'package:go_router/go_router.dart';

class AppartmentImageWidgets extends StatelessWidget {
  const AppartmentImageWidgets({
    super.key,
    required this.screenwidth,
    required this.pageController,
    required this.currentPage,
  });

  final double screenwidth;
  final PageController pageController;
  final ValueNotifier<int> currentPage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                color: currentPage.value == index ? Colors.blue : Colors.grey,
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
                      builder: (context) => const ShareBottomSheetWidget());
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    ]);
  }
}
