import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'dart:math';

class WelcomePage extends HookWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
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

    final positionController = useAnimationController(
      duration: const Duration(seconds: 6),
    )..repeat();

    // Controller for opacity animations
    final opacityController = useAnimationController(
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true); // Makes it go back and forth

    // Define different sizes for images
    final imageSizes = [40.0, 60.0, 80.0, 100.0];

    // Generate new random positions every animation cycle
    final positions = useMemoized(
        () => List.generate(8, (index) {
              final random = Random();
              final screenHeight = MediaQuery.of(context).size.height;
              final screenWidth = MediaQuery.of(context).size.width;
              return [
                random.nextDouble() *
                    screenWidth, // Random x position across full width
                random.nextDouble() *
                    (screenHeight *
                        0.75), // Random y position in 3/4 screen height
              ];
            }),
        [positionController.value]); // Regenerate when controller updates

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20), // Small top padding
          SizedBox(
            height: MediaQuery.of(context).size.height *
                0.75, // 3/4 of screen height
            width: double.infinity,
            child: Stack(
              children: List.generate(8, (index) {
                final random = Random();
                // Get random size from imageSizes
                final size = imageSizes[random.nextInt(imageSizes.length)];

                return AnimatedPositioned(
                  duration: const Duration(seconds: 3),
                  curve: Curves.easeInOut,
                  left: positions[index]
                      [0], // Direct position instead of offset from center
                  top: positions[index]
                      [1], // Direct position instead of offset from center
                  child: ScaleTransition(
                    scale: CurvedAnimation(
                      parent: animationController,
                      curve: Interval(0.1 * index, 1.0, curve: Curves.easeOut),
                    ),
                    child: AnimatedBuilder(
                      animation: opacityController,
                      builder: (context, child) {
                        return Opacity(
                          opacity: 0.2 + (opacityController.value * 0.8),
                          child: ClipOval(
                            child: Image.network(
                              "https://static.realting.com/uploads/images/3f1/445e22c2280ba1273ef81a36f446a.webp",
                              width: size,
                              height: size,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }),
            ),
          ),
          // Remaining content
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}
