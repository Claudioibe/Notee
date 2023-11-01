import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNotes extends StatelessWidget {
  const HomeNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 332,
      height: 71,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 332,
              height: 71,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 69,
            top: 25,
            child: Text(
              'Physics',
              style: GoogleFonts.urbanist(
                textStyle: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
