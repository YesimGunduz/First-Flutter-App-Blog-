import 'package:blogcat/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/button.global.dart';
import 'package:blogcat/view/widgets/social.login.dart';
import 'package:blogcat/view/widgets/text.form.global.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/David.png', height: 200),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    const Text(
                      "Create your account",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormGlobal(
                      controller: _emailController,
                      text: 'Email',
                      obscure: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    TextFormGlobal(
                      controller: _passwordController,
                      text: 'Password',
                      textInputType: TextInputType.text,
                      obscure: true,
                    ),
                    const SizedBox(height: 20),
                    TextFormGlobal(
                      controller: _confirmPasswordController,
                      text: 'Confirm Password',
                      textInputType: TextInputType.text,
                      obscure: true,
                    ),
                    const SizedBox(height: 20),
                    ButtonGlobal(
                      text: "Sign Up",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>  LoginView()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    SocialLogin(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
