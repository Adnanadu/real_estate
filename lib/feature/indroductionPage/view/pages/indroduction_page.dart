import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class IndroductionPage extends HookWidget {
  const IndroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);

    void onPageChanged(int index) {
      currentPage.value = index;
    }

    bool isLastPage() {
      return currentPage.value == 2;
    }

    List<Widget> buildPageViewChildren() {
      return const [
        OnboardingPage(
          imagePath: 'assets/images/villa_intro_1.jpg',
          title: 'Thousands of the best real estate at affordable prices',
        ),
        OnboardingPage(
          imagePath: 'assets/images/villa_intro_2.jpg',
          title: 'Book a real estate quickly and easily with one click',
        ),
        OnboardingPage(
          imagePath: 'assets/images/villa_intro_3.jpeg',
          title: 'Let\'s find the real estate that suits you right now!',
        ),
      ];
    }

    List<Widget> buildPageIndicators() {
      return List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: currentPage.value == index ? 30 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: currentPage.value == index ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: buildPageViewChildren(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildPageIndicators(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(
              onPressed: () {
                if (isLastPage()) {
                  // Navigate to home screen or main app page
                  context.push("/signin");
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xff246afd),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(isLastPage() ? 'Get Started' : 'Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: screenHeight * 0.6,
            width: double.infinity,
          ),
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
      ],
    );
  }
}
