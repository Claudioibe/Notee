import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightButton extends StatelessWidget {
   const LightButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromRGBO(161, 161, 161, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: GoogleFonts.urbanist(
            textStyle: const TextStyle(fontStyle: FontStyle.normal)),
      ),
    );
  }
}
