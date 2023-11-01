import 'package:flutter/material.dart';
import 'package:notee/components/urban_text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BaseAppBar({
    required this.icontoshow,
    required this.onPressed,
    required this.iconColor,
    required this.bgColor,
    
    super.key});

  final Icon icontoshow;
  final Function()? onPressed;
  final Color iconColor;
  final Color bgColor;


  @override
  Widget build(BuildContext context) {
    return AppBar(
          elevation: 0, 
          backgroundColor: bgColor,
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
              icon: icontoshow,color: iconColor,
              onPressed: onPressed,
            ),
          ],
        );
}

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
        
        
  }
