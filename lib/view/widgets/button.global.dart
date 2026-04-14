import 'package:flutter/material.dart';

class ButtonGlobal extends StatelessWidget {
  final String text; 
  final VoidCallback onPressed; 
<<<<<<< HEAD
=======
  
>>>>>>> 7fd4a66 (update)

  const ButtonGlobal({
    super.key,
    required this.onPressed,
    required this.text,
<<<<<<< HEAD
=======
    final Color? backgroundColor,
>>>>>>> 7fd4a66 (update)
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 3, 3, 3).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}