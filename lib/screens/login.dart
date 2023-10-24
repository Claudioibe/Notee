import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notee/components/google_signin_button.dart';
import 'package:notee/components/my_button.dart';
import 'package:notee/components/my_textfield.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text Editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                'Sign In',
                style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(fontSize: 50),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 60,
              ),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                icon: const Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                icon: const Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(fontSize: 15)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Or Continue With',
                    style: GoogleFonts.urbanist(),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              GoogleSignInButton(
                onPressed: () {},
              ),
              const SizedBox(
                height: 80,
              ),
              TextButton(
                  style: const ButtonStyle(
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(color: Colors.black),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Not Taking Awesome Notes Yet? Sign Up ",
                    style: GoogleFonts.urbanist(textStyle: const TextStyle(color: Colors.black)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
