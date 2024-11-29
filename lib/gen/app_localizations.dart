import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @resetPasswordText.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordText;

  /// No description provided for @resetPasswordScreenSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Lets\'s change your Password'**
  String get resetPasswordScreenSubTitle;

  /// No description provided for @passwordFieldLabelText.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordFieldLabelText;

  /// No description provided for @passwordFieldHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get passwordFieldHintText;

  /// No description provided for @conformPasswordFieldLabelText.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password '**
  String get conformPasswordFieldLabelText;

  /// No description provided for @conformPasswordFieldHintText.
  ///
  /// In en, this message translates to:
  /// **'Confirm your Password'**
  String get conformPasswordFieldHintText;

  /// No description provided for @submitButtonText.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitButtonText;

  /// No description provided for @transactionFailedScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Transaction Failed'**
  String get transactionFailedScreenTitle;

  /// No description provided for @transactionFailedScreenSubtext.
  ///
  /// In en, this message translates to:
  /// **'Hey, seems like there was some trouble. If money was debited from your account, It will be refunded automatically in 5-7 working days.'**
  String get transactionFailedScreenSubtext;

  /// No description provided for @transactionSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Transaction Successful'**
  String get transactionSuccessTitle;

  /// No description provided for @transactionSubtext.
  ///
  /// In en, this message translates to:
  /// **'Hi Dilshad, thank you for purchasing with us. We’d like to let you know that LevelX Learning has received your payment.'**
  String get transactionSubtext;

  /// No description provided for @successDetailsText.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get successDetailsText;

  /// No description provided for @transactionIdText.
  ///
  /// In en, this message translates to:
  /// **'ID Transaction'**
  String get transactionIdText;

  /// No description provided for @transactionSuccessCode.
  ///
  /// In en, this message translates to:
  /// **'#LXL978181013'**
  String get transactionSuccessCode;

  /// No description provided for @transactionDateText.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get transactionDateText;

  /// No description provided for @transactionStatusText.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get transactionStatusText;

  /// No description provided for @courseDetailsText.
  ///
  /// In en, this message translates to:
  /// **'Course Details'**
  String get courseDetailsText;

  /// No description provided for @otpVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otpVerificationTitle;

  /// No description provided for @otpVerificationSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4 digit code to verify your account'**
  String get otpVerificationSubTitle;

  /// No description provided for @otpConfirmationText.
  ///
  /// In en, this message translates to:
  /// **'Didn’t get the code?'**
  String get otpConfirmationText;

  /// No description provided for @otpWaitingText.
  ///
  /// In en, this message translates to:
  /// **'Resenicont code in'**
  String get otpWaitingText;

  /// No description provided for @otpResentText.
  ///
  /// In en, this message translates to:
  /// **'Resent'**
  String get otpResentText;

  /// No description provided for @otpVerificationButtonText.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get otpVerificationButtonText;

  /// No description provided for @forgotPasswordText.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPasswordText;

  /// No description provided for @forgotPasswordSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Please enter the address associated with this account'**
  String get forgotPasswordSubTitle;

  /// No description provided for @emailTextFiledWidgetHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get emailTextFiledWidgetHintText;

  /// No description provided for @emailTextFiledWidgetLabelText.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailTextFiledWidgetLabelText;

  /// No description provided for @continueButtonWidgetText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButtonWidgetText;

  /// No description provided for @otpForgotePasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4 digit code to reset your password'**
  String get otpForgotePasswordSubtitle;

  /// No description provided for @tryAgainButtonText.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgainButtonText;

  /// No description provided for @backTohomeButtonText.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backTohomeButtonText;

  /// No description provided for @courseNameText.
  ///
  /// In en, this message translates to:
  /// **'Course name'**
  String get courseNameText;

  /// No description provided for @courseDurationText.
  ///
  /// In en, this message translates to:
  /// **'Course duration'**
  String get courseDurationText;

  /// No description provided for @amountText.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amountText;

  /// No description provided for @startingDateText.
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get startingDateText;

  /// No description provided for @endingDateText.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get endingDateText;

  /// No description provided for @signupPageScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up to get started with us!'**
  String get signupPageScreenTitle;

  /// No description provided for @fullNameTextFeiHintText.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get fullNameTextFeiHintText;

  /// No description provided for @fullNameLabelText.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullNameLabelText;

  /// No description provided for @registerButtonLabelText.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerButtonLabelText;

  /// No description provided for @alreadyMemberText.
  ///
  /// In en, this message translates to:
  /// **'Already a member? '**
  String get alreadyMemberText;

  /// No description provided for @signInLinkText.
  ///
  /// In en, this message translates to:
  /// **'Sign in!'**
  String get signInLinkText;

  /// No description provided for @backButtonText.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backButtonText;

  /// No description provided for @signInScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your account'**
  String get signInScreenTitle;

  /// No description provided for @signInScreenSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Login in to continue your jourey with us'**
  String get signInScreenSubTitle;

  /// No description provided for @signInButtontext.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signInButtontext;

  /// No description provided for @rimemberMeText.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rimemberMeText;

  /// No description provided for @forgotPasswordLinkWidgetText.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPasswordLinkWidgetText;

  /// No description provided for @continueWithSocialAccountText.
  ///
  /// In en, this message translates to:
  /// **'Or continue with social account'**
  String get continueWithSocialAccountText;

  /// No description provided for @dontHaveanAccountText.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveanAccountText;

  /// No description provided for @signUpText.
  ///
  /// In en, this message translates to:
  /// **'Sign up!'**
  String get signUpText;

  /// No description provided for @iAgreeToText.
  ///
  /// In en, this message translates to:
  /// **'By signing in ,i agree to '**
  String get iAgreeToText;

  /// No description provided for @termsAndConditionLinkWidgetText.
  ///
  /// In en, this message translates to:
  /// **'Terms&conditions '**
  String get termsAndConditionLinkWidgetText;

  /// No description provided for @andText.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get andText;

  /// No description provided for @privacyPolicyLinkWidgetText.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicyLinkWidgetText;

  /// No description provided for @invalidNameWarning.
  ///
  /// In en, this message translates to:
  /// **'Please Enter your name'**
  String get invalidNameWarning;

  /// No description provided for @signUpSuccessMassage.
  ///
  /// In en, this message translates to:
  /// **'SignUp Successful'**
  String get signUpSuccessMassage;

  /// No description provided for @valideEmailWarning.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get valideEmailWarning;

  /// No description provided for @invalidEmailWarning.
  ///
  /// In en, this message translates to:
  /// **'Invalid email format'**
  String get invalidEmailWarning;

  /// No description provided for @invalidPasswordWarnig.
  ///
  /// In en, this message translates to:
  /// **'Invalid password'**
  String get invalidPasswordWarnig;

  /// No description provided for @passwordWaning.
  ///
  /// In en, this message translates to:
  /// **'Must be 8 characters'**
  String get passwordWaning;

  /// No description provided for @indavlidConfirmPasswordWarning.
  ///
  /// In en, this message translates to:
  /// **'Indavlid confirmpassword'**
  String get indavlidConfirmPasswordWarning;

  /// No description provided for @confirmPasswordWarning.
  ///
  /// In en, this message translates to:
  /// **'Password and confirm password must be same'**
  String get confirmPasswordWarning;

  /// No description provided for @signInSuccessfullMessege.
  ///
  /// In en, this message translates to:
  /// **'SignIn Successful'**
  String get signInSuccessfullMessege;

  /// No description provided for @signUpSnackbarError.
  ///
  /// In en, this message translates to:
  /// **'SignUp Not Successful, Try Again'**
  String get signUpSnackbarError;

  /// No description provided for @signInSnackbarError.
  ///
  /// In en, this message translates to:
  /// **'Sigin Not Successful, Try Again'**
  String get signInSnackbarError;

  /// No description provided for @signOutSnackbarError.
  ///
  /// In en, this message translates to:
  /// **'SignOut Not Successful, Try Again'**
  String get signOutSnackbarError;

  /// No description provided for @copyClipBoardText.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copyClipBoardText;

  /// No description provided for @mobileAppdevelopmentSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Mobile App development'**
  String get mobileAppdevelopmentSuggestionText;

  /// No description provided for @webDevelopmentSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Web development'**
  String get webDevelopmentSuggestionText;

  /// No description provided for @reactSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'React'**
  String get reactSuggestionText;

  /// No description provided for @webAppSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Web App'**
  String get webAppSuggestionText;

  /// No description provided for @flutterDevelopmentSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Flutter development'**
  String get flutterDevelopmentSuggestionText;

  /// No description provided for @pythonDjangoSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Python django'**
  String get pythonDjangoSuggestionText;

  /// No description provided for @androidDevelopmentSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'Android development'**
  String get androidDevelopmentSuggestionText;

  /// No description provided for @iOSDevelopmentSuggestionText.
  ///
  /// In en, this message translates to:
  /// **'iOS development'**
  String get iOSDevelopmentSuggestionText;

  /// No description provided for @searchPageHintText.
  ///
  /// In en, this message translates to:
  /// **'  Search what you’re looking for'**
  String get searchPageHintText;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
