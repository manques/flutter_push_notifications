// ignore_for_file: avoid_print

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';

import 'package:flutter_push_notifications/amplifyconfiguration.dart';
import 'package:flutter_push_notifications/core/push-notifications/AWS_Pinpoint/amplify_message_handler.dart';
import 'package:flutter_push_notifications/core/push-notifications/AWS_Pinpoint/amplify_request_permissions.dart';
import 'package:flutter_push_notifications/core/push-notifications/AWS_Pinpoint/amplify_token.dart';

Future<void> amplifyInit() async {
  try {
    final authPlugin = AmplifyAuthCognito();
    final pushPlugin = AmplifyPushNotificationsPinpoint();

    // permission
    await amplifyRequestPermissions();
    // token
    await amplifyToken();
    // background
    amplifyBackgroundMessageHandler();
    // foreground
    amplifyForegroundMessageHandler();
    // on tap opened
    amplifyOpenedMessageHandler();
    // on tap launch
    amplifyLaunchHandler();

    await Amplify.addPlugins([authPlugin, pushPlugin]);
    if (!Amplify.isConfigured) {
      await Amplify.configure(amplifyconfig);
    }
  } on Exception catch (e) {
    safePrint('An error occurred configuring Amplify: $e');
  }
}
