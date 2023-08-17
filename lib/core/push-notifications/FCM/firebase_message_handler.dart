import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

// ignore: prefer_typing_uninitialized_variables
var messageStreamController;

// foreground
Future<void> foregroundHandler() async {
  messageStreamController = BehaviorSubject<RemoteMessage>();

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (kDebugMode) {
      print('Handling a foreground message id: ${message.messageId}');
      print('Message data: ${message.data}');
      print('Message notification title: ${message.notification?.title}');
      print('Message notification body: ${message.notification?.body}');
    }

    messageStreamController.sink.add(message);
  });
}

// background
Future<void> backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
    print('Message data: ${message.data}');
    print('Message notification: ${message.notification?.title}');
    print('Message notification: ${message.notification?.body}');
  }
}
