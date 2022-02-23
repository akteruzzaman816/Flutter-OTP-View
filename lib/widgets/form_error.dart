import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final String errors;

  @override
  Widget build(BuildContext context) {
    return errors.isEmpty ? Container() : formErrorText(errors);
  }

  Row formErrorText(String error) {
    return Row(
      children: [
        const Icon(Icons.error,color: Colors.red),
        const SizedBox(
          width: 10,
        ),
        Text(error,style: const TextStyle(color: Colors.red),),
      ],
    );
  }
}
