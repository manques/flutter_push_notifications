import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/features/firebase_screen/firebase_screen.dart';
import 'package:flutter_push_notifications/core/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Push',
      theme: theme,
      home: const FirebaseScreen(),
    );
  }
}
