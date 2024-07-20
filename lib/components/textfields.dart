import 'package:flutter/material.dart';

class MyTextFIelds extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

   const MyTextFIelds(
    {super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText});


  @override
  Widget build(BuildContext context) {
    return Padding(
    
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
              
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ) ,
              ),

    );
  }
}