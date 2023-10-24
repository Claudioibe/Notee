import '../components/app_bar.dart';
import '../components/home_island.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: BaseAppBar(),
        body: Column(
          children: [
            HomeIsland(),
            


          ],
        ));
  }
}
