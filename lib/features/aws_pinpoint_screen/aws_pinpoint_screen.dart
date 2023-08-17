import 'package:flutter/material.dart';

class AWSPinPointScreen extends StatefulWidget {
  const AWSPinPointScreen({super.key});

  @override
  State<AWSPinPointScreen> createState() {
    return _AWSPinPointScreen();
  }
}

class _AWSPinPointScreen extends State<AWSPinPointScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AWS Pinpoint')),
    );
  }
}
