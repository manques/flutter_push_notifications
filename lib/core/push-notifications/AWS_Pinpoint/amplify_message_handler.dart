import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

// foreground
Future<void> amplifyForegroundMessageHandler() async {
  final subscription = Amplify
      .Notifications.Push.onNotificationReceivedInForeground
      .listen(amplifyForegroundMessageReceivedHandler);
  // subscription.cancel();
}

void amplifyForegroundMessageReceivedHandler(
    PushNotificationMessage notificationMessage) {
  if (kDebugMode) {
    print("amplify forground: $notificationMessage");
  }
}

// background
Future<void> amplifyBackgroundMessageHandler() async {
  Amplify.Notifications.Push.onNotificationReceivedInBackground(
      amplifyBackgroundMessageReceivedHandler);
}

Future<void> amplifyBackgroundMessageReceivedHandler(
    PushNotificationMessage notificationMessage) async {
  if (kDebugMode) {
    print("amplify background: $notificationMessage");
  }
}

// on tap opened
Future<void> amplifyOpenedMessageHandler() async {
  final subscription = Amplify.Notifications.Push.onNotificationOpened
      .listen(amplifyOpenedMessageReceivedHandler);
  // subscription.cancel();
}

Future<void> amplifyOpenedMessageReceivedHandler(
    PushNotificationMessage notificationMessage) async {
  if (kDebugMode) {
    print("amplify background: $notificationMessage");
  }
}

// on tap launch
Future<void> amplifyLaunchHandler() async {
  final launchNotification = Amplify.Notifications.Push.launchNotification;
  if (kDebugMode) {
    print("amplify background: $launchNotification");
  }
}
