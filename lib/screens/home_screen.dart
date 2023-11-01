import 'package:firebase_auth/firebase_auth.dart';
import 'package:notee/components/home_notes.dart';
import '../components/app_bar.dart';
import '../components/home_island.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        bgColor: Colors.white,

        icontoshow: const Icon(Icons.logout),
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        
        iconColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeIsland(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Notes',
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 32),
                     child: Text(
                      'SORT',
                      style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 10, color: Colors.grey),
                      ),
                                   ),
                   ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const HomeNotes(),
            const SizedBox(height: 10),
            const HomeNotes(),
            const SizedBox(height: 10),
            const HomeNotes(),
      
            
      
          ],
        ),
      ),
    );
  }
}
