import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_options.dart';

Future<void> firebaseToken(FirebaseMessaging messaging) async {
  // FCM registration token
  String? token;
  if (DefaultFirebaseOptions.currentPlatform == DefaultFirebaseOptions.web) {
    token = await messaging.getToken(vapidKey: vapidKey);
  } else {
    token = await messaging.getToken();
  }

  if (kDebugMode) {
    print('Registration token: $token');
  }
}
