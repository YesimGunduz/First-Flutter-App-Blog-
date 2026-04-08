import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:blogcat/view/login.view.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {Get.to(LoginView());
    });
    return Scaffold(
      body: Stack(
        children: [
          // 1️⃣ Arka plan resmi
          SizedBox.expand(
            child: Image.asset(
              'assets/pexels-shvetsa-4587974.jpg',
              fit: BoxFit.cover,
            ),
          ),

          
          Container(
            
            color: Colors.black.withOpacity(0.3),
          ),

          
          Column(
            children: [
              Spacer(flex: 1), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "My Cat David's Blog",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 30,
                        color: const Color.fromARGB(115, 108, 104, 104),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "David is waiting for you, come join my cat adventures!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 3), 
            ],
          ),
        ],
      ),
    );
  }
}