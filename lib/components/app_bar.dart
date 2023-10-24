import 'package:flutter/material.dart';
import 'package:notee/components/urban_text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: const UrbanText(
              text: 'Notee.',
              fontsize: 30,
              textcolor: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        );
}

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
        
        
  }
