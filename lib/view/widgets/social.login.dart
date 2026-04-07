import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  Widget socialButton(String assetPath, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: SvgPicture.asset(
            assetPath,
            height: 30,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Or sign in with",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              socialButton('assets/images/google-logo-search-new-svgrepo-com.svg', () {
                print("Google Login");
              }),
              const SizedBox(width: 20),
              socialButton('assets/images/facebook-svgrepo-com.svg', () {
                print("Facebook Login");
              }),
              const SizedBox(width: 20),
              socialButton('assets/images/x-svgrepo-com.svg', () {
                print("Twitter Login");
              }),
            ],
          ),
        ),
      ],
    );
  }
}