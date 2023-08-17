import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> amplifyRequestPermissions() async {
  final status = await Amplify.Notifications.Push.getPermissionStatus();
  if (status == PushNotificationPermissionStatus.granted) {
    // no further action is required, user has already granted permissions
    return;
  }
  if (status == PushNotificationPermissionStatus.denied) {
    // further attempts to request permissions will no longer do anything
    // myFunctionToGracefullyDegradeMyApp();
    return;
  }
  if (status == PushNotificationPermissionStatus.shouldRequest) {
    // go ahead and request permissions from the user
    await Amplify.Notifications.Push.requestPermissions();
  }
  if (status == PushNotificationPermissionStatus.shouldExplainThenRequest) {
    // you should display some explanation to your user before requesting permissions
    // await myFunctionExplainingPermissionsRequest();
    // then request permissions
    await Amplify.Notifications.Push.requestPermissions();
  }
}
