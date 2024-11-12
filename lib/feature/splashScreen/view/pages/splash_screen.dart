import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Auto-navigate to WelcomeScreen after a 3-second delay
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () {
        if (context.mounted) {
          context.push("/welcome");
        }
      });
      return null; // Cleanup function is not needed here
    }, []);

    // Animation for the loading indicator at the bottom
    final animationController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Logo and App Name
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.home, // Replace with your custom icon if needed
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Reasa",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Loading Indicator Animation
          CircularProgressIndicator(
            valueColor: animationController.drive(ColorTween(
              begin: Colors.blue,
              end: Colors.blue.shade300,
            )),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
