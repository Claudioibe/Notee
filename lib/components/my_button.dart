import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onTap,
    super.key});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 52,
        decoration: ShapeDecoration(
          color: const Color(0xFF2C2C2C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 36,
              offset: Offset(0, 9),
              spreadRadius: 0,
            )
          ],
        ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  height: 0.12,
                  letterSpacing: 0.20,
                ),)  
              ),
            ),
          ),
        ),
    );
    
  }
}
