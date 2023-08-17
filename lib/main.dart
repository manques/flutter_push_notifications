import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/app.dart';
import 'package:flutter_push_notifications/core/push-notifications/AWS_Pinpoint/amplify_init.dart';

// import 'package:flutter_push_notifications/core/push-notifications/FCM/firebase_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // firebase
  // await firebaseInit();

  // aws pinpoint
  await amplifyInit();

  runApp(const App());
}
