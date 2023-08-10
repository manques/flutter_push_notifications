import 'package:flutter/material.dart';
import 'app.dart';

import 'package:flutter/foundation.dart';

import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initailize flutterfire
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // request permission
  final messaging = FirebaseMessaging.instance;
  final setting = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (kDebugMode) {
    print('Permission  granted: ${setting.authorizationStatus}');
  }
  // FCM registration token
  String? token = await messaging.getToken();
  if (kDebugMode) {
    print('Registration token: $token');
  }
  runApp(const MyApp());
}
