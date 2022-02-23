import 'package:flutter/material.dart';
import 'package:flutter_otp_view/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter OTP view',
      initialRoute: Routes.phoneNumberScreen,
      routes: Routes.list,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
