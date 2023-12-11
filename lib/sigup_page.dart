import 'package:flutter/material.dart';
import 'package:login__ui_/widgets/button.dart';
import 'package:login__ui_/widgets/social_icon.dart';
import 'package:login__ui_/widgets/text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF186b70),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20
          ),
          child: Center(
            child: Column(
              children: [
                //logo 
                Image.asset(
                  "images/logo.png",
                  height: 150,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 20,),

                //Welcome Back Text

                const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),

                const SizedBox(height: 30,),


                //Tutorials on my Youtube

                //Instagram: @the.programming.room

                //Youtube: The Programming Room

                //Github: TheProgrammingRoom

                const MyTextField(
                  hintText: "Enter Your Full Name", 
                  obscureText: false, 
                  icon: Icons.person_2_outlined, 
                  text: "UserName"
                ),

                const SizedBox(height: 10,),

                const MyTextField(
                  hintText: "Enter Your Email", 
                  obscureText: false, 
                  icon: Icons.email_outlined, 
                  text: "Email"
                ),

                const SizedBox(height: 10,),

                const MyTextField(
                  hintText: "Enter Your Password", 
                  obscureText: true, 
                  icon: Icons.lock_outline, 
                  text: "Password"
                ),


                const SizedBox(height: 20,),

                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.white,),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 30,),

                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialIcon(imagePath: "images/fb.png"),
                      SocialIcon(imagePath: "images/x.png"),
                      SocialIcon(imagePath: "images/google.png"),
                      SocialIcon(imagePath: "images/apple.png")
                    ],
                  ),
                ),

                const SizedBox(height: 30,),

                const MyButton(text: "Log In",),

                const SizedBox(height: 40,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I Have an Accoun't? ",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const  Text(
                        "Log In",
                        style: TextStyle(
                          color: Color(0xFFf1c94f),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}