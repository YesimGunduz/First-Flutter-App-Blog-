import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Container(
        alignment: Alignment.center,
        child: Text(
          "Or sign in with",
          style: TextStyle(
            color: const Color.fromARGB(255, 3, 3, 3),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
      ),
      const SizedBox(height: 20),
      Container(
         width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/images/google.svg', height: 40)  ,
            ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/images/Facebook.svg', height: 40)  ,
            ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/images/twitter.svg', height: 20)  ,
            ),
            ),
          ],
        ),
      ),
     ],

    );

  }
}