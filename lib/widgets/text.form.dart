import 'package:flutter/material.dart';
import 'package:nssystem/utils/global.colors.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
    required this.text,
    required this.obscure,
  });

  final String text;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        decoration: BoxDecoration(
            color: GlobalColors.secondaryColor,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
            ),
          ),
        ),
      ),
    );
  }
}
