import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Verified",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
    );
  }
}
