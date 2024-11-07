import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodePage extends HookWidget {
  const OtpCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Hook for managing the PIN input
    final pinController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:
            const Text("Create New PIN", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // Instruction Text
              const Text(
                "Add a PIN number to make your account more secure.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 40),

              // PIN Input Field
              PinCodeTextField(
                controller: pinController,
                length: 4,
                obscureText: true,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeFillColor: Colors.white,
                  selectedColor: Colors.blue,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey[300]!,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  // Handle PIN change
                },
                appContext: context,
              ),
              const SizedBox(height: 40),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle continue action with entered PIN
                    context.push("/forgotpassword");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
