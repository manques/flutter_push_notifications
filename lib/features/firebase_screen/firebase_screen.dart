import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_message_handler.dart';

class FirebaseScreen extends StatefulWidget {
  const FirebaseScreen({super.key});

  @override
  State<FirebaseScreen> createState() => _FirebaseScreenState();
}

class _FirebaseScreenState extends State<FirebaseScreen> {
  String _lastMessage = "";

  _FirebaseScreenState() {
    messageStreamController.listen((message) {
      setState(() {
        if (message.notification != null) {
          _lastMessage = 'Received a notification message:'
              '\nTitle=${message.notification?.title},'
              '\nBody=${message.notification?.body},'
              '\nData=${message.data}';
        } else {
          _lastMessage = 'Received a data message: ${message.data}';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('handle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                textAlign: TextAlign.center,
                'Last message from Firebase Messaging:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                _lastMessage,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
