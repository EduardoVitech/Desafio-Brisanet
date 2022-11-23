import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_brisanet/controllers/auth_controller/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

var firebaseAuth = FirebaseAuth.instance;
var firestore = FirebaseFirestore.instance;

// AUTH CONTROLLER
var authController = AuthController.instance;
