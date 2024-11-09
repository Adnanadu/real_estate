import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends HookWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () {
        if (context.mounted) {
          context.push("/");
        }
      });
      return null; // Cleanup function is not needed here
    }, []);
    // Animation for circular images
    final animationController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Animated Circles
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: List.generate(9, (index) {
              return ScaleTransition(
                scale: CurvedAnimation(
                  parent: animationController,
                  curve: Interval(0.1 * index, 1.0, curve: Curves.easeOut),
                ),
                child: ClipOval(
                  child: Image.network(
                    // 'https://via.placeholder.com/80', // Replace with actual image URLs
                    "https://static.realting.com/uploads/images/3f1/445e22c2280ba1273ef81a36f446a.webp", // Replace with actual image URLs
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 32),
          // Welcome Text
          const Column(
            children: [
              Text(
                "Welcome to Dubai Expo! 👋",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                "The best real estate application to complete your life and family.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
