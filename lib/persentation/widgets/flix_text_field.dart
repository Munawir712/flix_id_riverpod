import 'package:flix_id_riverpod/persentation/misc/constants.dart';
import 'package:flutter/material.dart';

class FlixTextField extends StatelessWidget {
  const FlixTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.obsecureText = false,
  });
  final String labelText;
  final TextEditingController controller;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: const TextStyle(color: ghostWhite),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade800)),
        focusedBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: ghostWhite)),
      ),
    );
  }
}
