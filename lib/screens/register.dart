import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notee/components/google_signin_button.dart';
import 'package:notee/components/my_button.dart';
import 'package:notee/components/my_textfield.dart';
import 'package:notee/screens/login.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});

   // Text Controllers

  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  // Sign User Up
  void signUserUp(){

  }

  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
            
            
                  Text(
                    'Create Account',
                    style: GoogleFonts.urbanist(
                        textStyle: const TextStyle(fontSize: 50),
                        fontWeight: FontWeight.w700),
                  ),
            
            
                  const SizedBox(
                    height: 60,
                  ),
            
            
                  MyTextField(
                    controller: nameController,
                    hintText: 'Your Name',
                    obscureText: false,
                    icon: const Icon(
                      Icons.supervised_user_circle,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10,),
            
            
                  MyTextField(
                    controller: emailController,
                    hintText: 'Your Email',
                    obscureText: false,
                    icon: const Icon(
                      Icons.email_outlined,
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
              
                  const SizedBox(
                    height: 40,
                  ),
            
                  MyButton(
                    buttonText: 'Sign Up',
                    onTap: signUserUp,
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Already Taking Awesome Notes? Sign In",
                        style: GoogleFonts.urbanist(textStyle: const TextStyle(color: Colors.black)),
                      ))
                ],
              ),
            ),
          ),
        ),
    
      
    );
  }
}