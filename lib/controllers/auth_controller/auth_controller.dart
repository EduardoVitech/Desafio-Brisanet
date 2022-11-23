import 'package:desafio_brisanet/screens/home_screen/home_screen.dart';
import 'package:desafio_brisanet/screens/login_screen/login_screen.dart';
import 'package:desafio_brisanet/utils/firebase_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  User get user => _user.value!;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }

  void loginUser(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        const SnackBar(
          content: Text('Error Logging in Please enter all the fields'),
        );
      }
    } catch (e) {
      SnackBar(
        content: Text('Error Loggin gin ${e.toString()}'),
      );
    }
  }

  void signOut() async {
    await firebaseAuth.signOut();
  }
}
