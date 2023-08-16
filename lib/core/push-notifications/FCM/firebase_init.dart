import 'package:flutter/foundation.dart';
import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_options.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_token.dart';
import 'package:flutter_push_notifications/core/push-notifications/FCM/message_handler.dart';

Future<void> firebaseInit() async {
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

  // token
  await firebaseToken(messaging);

  // foreground
  foregroundHandler();
  // Backgroud
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
}
