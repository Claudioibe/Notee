import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
   const GoogleSignInButton({
    required this.onPressed,
    super.key});

  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
                height: 54,
                width: 300,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF2C2C2C),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: onPressed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                        width: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Google",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                ),
              );
  }
}