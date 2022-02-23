import 'package:flutter/material.dart';
import 'package:flutter_otp_view/routes/routes.dart';
import 'package:flutter_otp_view/widgets/custom_button.dart';
import 'package:flutter_otp_view/widgets/form_error.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key,}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _formKey = GlobalKey<FormState>();

  String? phoneNumber;

  String errors = "";

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors = error;
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildPhoneFormField(),
                      FormError(errors: errors),
                      const SizedBox(height: 10,),
                      CustomButton(
                        text: "Continue",
                        press: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.pushNamed(context, Routes.otpScreen,arguments: {"phone":phoneNumber});
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: "Please enter your phone number");
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please enter your phone number");
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Phone",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.phone_android),
      ),
    );
  }
}
