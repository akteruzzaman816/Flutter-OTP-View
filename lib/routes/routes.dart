import 'package:flutter_otp_view/screens/otp_view/otp_screen.dart';
import 'package:flutter_otp_view/screens/phone_number_screen.dart';
import 'package:flutter_otp_view/screens/verification_screen.dart';

class Routes{
  static const String phoneNumberScreen = "/phoneNumberScreen";
  static const String otpScreen = "/otpScreen";
  static const String verifiedScreen = "/verifiedScreen";

  static var list = {
    Routes.otpScreen:(context) =>  const OtpScreen(),
    Routes.phoneNumberScreen:(context) => const PhoneNumberScreen(),
    Routes.verifiedScreen:(context) => const VerificationScreen()
  };
}