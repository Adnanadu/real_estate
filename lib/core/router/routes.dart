import 'package:flutter_application_1/feature/account/view/pages/otp_code_page.dart';
import 'package:flutter_application_1/feature/account/view/pages/profile_form_page.dart';
import 'package:flutter_application_1/feature/forgotPassword/view/pages/forgot_password_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "profileform",
      builder: (context, state) => const ProfileFormPage(),
    ),
    GoRoute(
      path: "/otpcode",
      name: "otpcode",
      builder: (context, state) => const OtpCodePage(),
    ),
    GoRoute(
      path: "/forgotpassword",
      name: "forgotpassword",
      builder: (context, state) => const ForgotPasswordPage(),
    ),
    // GoRoute(
    //   path: "/",
    //   name: "profileform",
    //   builder: (context, state) => const ProfileForm(),
    // ),
  ],
);