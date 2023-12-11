import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final String text;
  const MyTextField({super.key, required this.hintText, required this.obscureText, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: Colors.grey[400],
              ),
              const SizedBox(width: 5,),
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFf1c94f),
                width: 2.0
              ),
              borderRadius: BorderRadius.circular(15)
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[800]
            )
          ),
        )
      ],
    );
  }
}