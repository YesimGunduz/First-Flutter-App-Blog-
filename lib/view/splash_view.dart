import 'package:flutter/material.dart';
import 'dart:async';
<<<<<<< HEAD
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
=======
import 'package:blogcat/view/login.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
 @override
void initState() {
  super.initState();

  Future.delayed(const Duration(seconds: 3), () {
    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LoginView()),
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
>>>>>>> 7fd4a66 (update)
          SizedBox.expand(
            child: Image.asset(
              'assets/pexels-shvetsa-4587974.jpg',
              fit: BoxFit.cover,
            ),
          ),

<<<<<<< HEAD
          
          Container(
            
            color: Colors.black.withOpacity(0.3),
          ),

          
          Column(
            children: [
              Spacer(flex: 1), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
=======
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          Column(
            children: [
              const Spacer(flex: 1),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
>>>>>>> 7fd4a66 (update)
                child: Text(
                  "My Cat David's Blog",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
<<<<<<< HEAD
                    shadows: [
                      Shadow(
                        blurRadius: 30,
                        color: const Color.fromARGB(115, 108, 104, 104),
                        offset: Offset(2, 2),
                      ),
                    ],
=======
>>>>>>> 7fd4a66 (update)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
<<<<<<< HEAD
              SizedBox(height: 20),
              Text(
=======
              const SizedBox(height: 20),
              const Text(
>>>>>>> 7fd4a66 (update)
                "David is waiting for you, come join my cat adventures!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
<<<<<<< HEAD
              Spacer(flex: 3), 
=======
              const Spacer(flex: 3),
>>>>>>> 7fd4a66 (update)
            ],
          ),
        ],
      ),
    );
  }
}