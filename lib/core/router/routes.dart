import 'package:flutter_application_1/feature/account/view/pages/otp_code_page.dart';
import 'package:flutter_application_1/feature/account/view/pages/profile_form_page.dart';
import 'package:flutter_application_1/feature/forgotPassword/view/pages/create_new_password_page.dart';
import 'package:flutter_application_1/feature/forgotPassword/view/pages/forgot_password_page.dart';
import 'package:flutter_application_1/feature/homePage/view/pages/home_page.dart';
import 'package:flutter_application_1/feature/homePage/view/pages/notification_page.dart';
import 'package:flutter_application_1/feature/indroductionPage/view/pages/indroduction_page.dart';
import 'package:flutter_application_1/feature/signInPage/view/pages/sign_in_page.dart';
import 'package:flutter_application_1/feature/signUpPage/view/pages/sign_up.dart';
import 'package:flutter_application_1/feature/splashScreen/view/pages/splash_screen.dart';
import 'package:flutter_application_1/feature/splashScreen/view/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/splash",
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
    GoRoute(
      path: "/newpassword",
      name: "newpassword",
      builder: (context, state) => const CreateNewPasswordPage(),
    ),
    // GoRoute(
    //   path: "/otpverification",
    //   name: "otpverification",
    //   builder: (context, state) => const OTPVerificationPage(),
    // ),
    GoRoute(
      path: "/indro",
      name: "intro",
      builder: (context, state) => const IndroductionPage(),
    ),
    GoRoute(
      path: "/signin",
      name: "signin",
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: "/signup",
      name: "signup",
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: "/splash",
      name: "splash",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/welcome",
      name: "welcome",
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: "/home",
      name: "home",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/notifi",
      name: "notifi",
      builder: (context, state) => const NotificationPage(),
    ),
  ],
);
