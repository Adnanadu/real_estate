import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IndroductionPage extends HookWidget {
  const IndroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);

    void onPageChanged(int index) {
      currentPage.value = index;
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: const [
                OnboardingPage(
                  imagePath: 'assets/images/villa_intro_1.jpg',
                  title:
                      'Thousands of the best real estate at affordable prices',
                ),
                OnboardingPage(
                  imagePath: 'assets/images/villa_intro_2.jpg',
                  title: 'Book a real estate quickly and easily with one click',
                ),
                OnboardingPage(
                  imagePath: 'assets/images/villa_intro_3.jpeg',
                  title:
                      'Let\'s find the real estate that suits you right now!',
                  isLastPage: true,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: currentPage.value == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentPage.value == index ? Colors.blue : Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isLastPage;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    this.isLastPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: ElevatedButton(
            onPressed: () {
              if (isLastPage) {
                // Navigate to home screen or main app page
              } else {
                // Navigate to the next page
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: Text(isLastPage ? 'Get Started' : 'Next'),
          ),
        ),
      ],
    );
  }
}
