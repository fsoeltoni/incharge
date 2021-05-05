import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:incharge/presentation/incharge.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Incharge());
}
