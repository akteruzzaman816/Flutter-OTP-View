import 'package:flutter/material.dart';
import 'package:flutter_otp_view/screens/otp_view/otp_form.dart';

class OtpScreen extends StatefulWidget {

  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  String phoneNumber="";


  @override
  Widget build(BuildContext context) {
    final routes = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    phoneNumber = routes["phone"];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "OTP Verification",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
                ),
                Text("We sent your code to $phoneNumber"),
                const SizedBox(height: 50),
                //buildTimer(),
                const OtpForm(),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {

                  },
                  child: const Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
    ),
      )
    );
  }
}
