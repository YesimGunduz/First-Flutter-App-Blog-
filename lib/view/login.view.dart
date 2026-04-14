import 'package:blogcat/view/home.page.view.dart';
import 'package:blogcat/view/widgets/button.global.dart';
import 'package:blogcat/view/widgets/social.login.dart';
import 'package:blogcat/view/widgets/text.form.global.dart';
<<<<<<< HEAD
=======
import 'package:firebase_auth/firebase_auth.dart';
>>>>>>> 7fd4a66 (update)
import 'package:flutter/material.dart';
import 'package:blogcat/view/signup.view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

<<<<<<< HEAD
=======

  Future<void> login(BuildContext context) async {
    final email = _emailController.text.trim().toLowerCase();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } on FirebaseAuthException catch (e) {
      String message = "";

      if (e.code == "user-not-found") {
        message = "No user found for this email.";
      } else if (e.code == "wrong-password") {
        message = "Wrong password.";
      } else if (e.code == "invalid-email") {
        message = "Invalid email format.";
      } else {
        message = e.message ?? "Login error";
      }

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }

>>>>>>> 7fd4a66 (update)
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
                      "Login to your account",
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
                    ButtonGlobal(
                      text: "Sign In",
<<<<<<< HEAD
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
=======
                      onPressed: () async {
                        await login(context);
>>>>>>> 7fd4a66 (update)
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
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
