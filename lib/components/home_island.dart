import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeIsland extends StatelessWidget {
  const HomeIsland({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(10),
                width: 331,
                height: 182,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2C2C2C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text('Hi User ',
                              style: GoogleFonts.urbanist(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                  letterSpacing: 0.20,
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: SizedBox(
                            width: 110,
                            child: Text(
                              'Join the community. Share your notes with other students.',
                              style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: SizedBox(
                            width: 130,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Learn More',
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 130,
                    height: 100,
                      child: Image.network('https://i.postimg.cc/sDt2DjbZ/home-note.png'))
                        
                         
                  ],
                ),
              ),
            );
  }
}