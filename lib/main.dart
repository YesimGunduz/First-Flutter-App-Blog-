<<<<<<< HEAD
import 'package:blogcat/View/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
=======
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:blogcat/view/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

>>>>>>> 7fd4a66 (update)
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
     home: SplashView(),
=======
      home: SplashView(),
>>>>>>> 7fd4a66 (update)
    );
  }
}