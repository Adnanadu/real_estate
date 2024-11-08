// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:async';

// final otpProvider = StateProvider<String>((ref) => ''); // Store OTP input
// final timerProvider = StateProvider<int>((ref) => 60); // Timer for resend

// class OTPVerificationPage extends HookConsumerWidget {
//   const OTPVerificationPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final otpController = useTextEditingController();
//     final otp = ref.watch(otpProvider);
//     final timer = ref.watch(timerProvider);
//     final timerNotifier = ref.read(timerProvider.notifier);

//     // Timer Logic
//     useEffect(() {
//       Timer.periodic(const Duration(seconds: 1), (timer) {
//         if (ref.read(timerProvider) > 0) {
//           timerNotifier.state -= 1;
//         } else {
//           timer.cancel();
//         }
//       });
//       return null;
//     }, []);

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text('OTP Code Verification'),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 30),
//             const Text(
//               'Code has been sent to +1 111 ******99',
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 20),

//             // OTP Input Fields
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(4, (index) {
//                 return Container(
//                   width: 50,
//                   height: 50,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(
//                       color: otp.length == index ? Colors.blue : Colors.grey,
//                       width: 2,
//                     ),
//                   ),
//                   child: TextField(
//                     controller: otpController,
//                     onChanged: (value) {
//                       if (value.length == 1) {
//                         ref.read(otpProvider.notifier).state += value;
//                         FocusScope.of(context).nextFocus(); // Move to next box
//                       } else if (value.isEmpty && otp.length > index) {
//                         ref.read(otpProvider.notifier).state =
//                             otp.substring(0, index); // Remove last character
//                         FocusScope.of(context)
//                             .previousFocus(); // Move to previous box
//                       }
//                     },
//                     maxLength: 1,
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     decoration: const InputDecoration(
//                       counterText: '',
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(height: 20),

//             // Resend Timer
//             Text(
//               'Resend code in ${timer}s',
//               style: const TextStyle(fontSize: 16, color: Colors.blue),
//             ),
//             const SizedBox(height: 30),

//             // Verify Button
//             ElevatedButton(
//               onPressed: otp.length == 4
//                   ? () {
//                       // Add your verification logic here
//                     }
//                   : null,
//               style: ElevatedButton.styleFrom(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//               child: const Text(
//                 'Verify',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
