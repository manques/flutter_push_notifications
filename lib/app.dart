import 'package:flutter/material.dart';

import 'package:flutter_push_notifications/core/theme/theme.dart';
import 'package:flutter_push_notifications/features/aws_pinpoint_screen/aws_pinpoint_screen.dart';
// import 'package:flutter_push_notifications/features/firebase_screen/firebase_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Push',
      theme: theme,
      // home: const FirebaseScreen(),
      home: const AWSPinPointScreen(),
    );
  }
}
