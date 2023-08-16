import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/app.dart';
import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInit();
  runApp(const App());
}
