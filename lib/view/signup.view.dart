import 'package:blogcat/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/button.global.dart';
import 'package:blogcat/view/widgets/social.login.dart';
import 'package:blogcat/view/widgets/text.form.global.dart';
<<<<<<< HEAD

class Signup extends StatelessWidget {
  Signup({super.key});

=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
>>>>>>> 7fd4a66 (update)
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

<<<<<<< HEAD
=======
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  bool isLoading = false;

  Future<void> _showAlert(
    BuildContext context,
    String title,
    String message,
  ) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> signUp() async {
    FocusScope.of(context).unfocus();
    final email = _emailController.text.trim().toLowerCase();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$");

    setState(() {
      emailError = null;
      passwordError = null;
      confirmPasswordError = null;
    });

    bool hasError = false;

    // EMAIL
    if (email.isEmpty) {
      emailError = "Email is required";
      hasError = true;
    } else if (!emailRegex.hasMatch(email)) {
      emailError = "Invalid email format";
      hasError = true;
    }

    // PASSWORD
    if (password.isEmpty) {
      passwordError = "Password is required";
      hasError = true;
    } else if (password.length < 6) {
      passwordError = "Minimum 6 characters";
      hasError = true;
    }

    // CONFIRM PASSWORD
    if (confirmPassword.isEmpty) {
      confirmPasswordError = "Please confirm password";
      hasError = true;
    } else if (password != confirmPassword) {
      confirmPasswordError = "Passwords do not match";
      hasError = true;
    }

    setState(() {});

    // ❌ HATA VARSA DUR
    if (hasError) return;

    setState(() => isLoading = true);

    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({'email': email, 'createdAt': FieldValue.serverTimestamp()});

      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();

      // ✅ SADECE BAŞARI ALERT
      await _showAlert(context, "Success", "Account created successfully!");

      // kısa gecikme sonra yönlendir
      Future.delayed(const Duration(milliseconds: 500), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginView()),
        );
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        _showAlert(context, "Error", "This email is already registered.");
      } else if (e.code == 'invalid-email') {
        _showAlert(context, "Error", "Invalid email address.");
      } else if (e.code == 'weak-password') {
        _showAlert(context, "Error", "Password is too weak.");
      } else {
        _showAlert(context, "Error", e.message ?? "Auth error");
      }
    } finally {
      setState(() => isLoading = false);
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
<<<<<<< HEAD
=======
                      errorText: emailError,
>>>>>>> 7fd4a66 (update)
                    ),
                    const SizedBox(height: 20),
                    TextFormGlobal(
                      controller: _passwordController,
                      text: 'Password',
                      textInputType: TextInputType.text,
                      obscure: true,
<<<<<<< HEAD
=======
                      errorText: passwordError,
>>>>>>> 7fd4a66 (update)
                    ),
                    const SizedBox(height: 20),
                    TextFormGlobal(
                      controller: _confirmPasswordController,
                      text: 'Confirm Password',
                      textInputType: TextInputType.text,
                      obscure: true,
<<<<<<< HEAD
                    ),
                    const SizedBox(height: 20),
                    ButtonGlobal(
                      text: "Sign Up",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) =>  LoginView()),
                        );
=======
                      errorText: confirmPasswordError,
                    ),
                    const SizedBox(height: 20),
                    ButtonGlobal(
                      text: isLoading ? "Signing Up..." : "Sign Up",
                      backgroundColor: isLoading ? Colors.grey : Colors.blue,
                      onPressed: () async {
                        if (isLoading) return;
                        await signUp();
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
    );
  }
}
