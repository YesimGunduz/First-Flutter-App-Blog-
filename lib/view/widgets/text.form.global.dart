import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
<<<<<<< HEAD
  const TextFormGlobal({super.key, required this.controller, required this.text, required this.textInputType, required this.obscure});
=======
  const TextFormGlobal({super.key, required this.controller, required this.text, required this.textInputType, required this.obscure, this.errorText});
>>>>>>> 7fd4a66 (update)

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure; 

<<<<<<< HEAD
=======
  final String? errorText;

  
>>>>>>> 7fd4a66 (update)
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
           
            color: const Color.fromARGB(255, 3, 3, 3).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: TextFormField(
<<<<<<< HEAD
=======
        controller: controller,
>>>>>>> 7fd4a66 (update)
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
<<<<<<< HEAD
=======
          errorText: errorText,
>>>>>>> 7fd4a66 (update)
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(height: 1),
        ),
      ),
    );
  }
}
