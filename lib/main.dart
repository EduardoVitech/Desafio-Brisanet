import 'package:desafio_brisanet/controllers/auth_controller/auth_controller.dart';
import 'package:desafio_brisanet/screens/login_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBgHZHNEoUU--QnBiMbxnH2Vyi8SjlxMSI",
        authDomain: "desafio-brisanet.firebaseapp.com",
        projectId: "desafio-brisanet",
        storageBucket: "desafio-brisanet.appspot.com",
        messagingSenderId: "1092192073918",
        appId: "1:1092192073918:web:43f7c7a06bc10a17a406ef",
      ),
    ).then((value) {
      Get.put(AuthController());
    });
  } else {
    await Firebase.initializeApp().then((value) {
      Get.put(AuthController());
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Desafio Brisanet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
