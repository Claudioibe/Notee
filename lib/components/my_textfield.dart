import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon? icon;

  const MyTextField(
      {this.icon,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: TextField(
        style: GoogleFonts.urbanist(
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
        ),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          iconColor: Colors.black,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
