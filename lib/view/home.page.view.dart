import 'package:flutter/material.dart';
import 'package:blogcat/view/widgets/footer.global.dart';
import 'package:blogcat/view/widgets/header.global.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderGlobal(),
          Expanded(
            child: Center(
              child: Text(
                "David’in maceralarını keşfet, kedilerle dolu bir dünyaya katıl!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ),
          ),
          FooterGlobal(),
        ],
      ),
    );
  }
}