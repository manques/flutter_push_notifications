import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> amplifyToken() async {
  final subscription =
      Amplify.Notifications.Push.onTokenReceived.listen(tokenReceivedHandler);
  subscription.cancel();
}

void tokenReceivedHandler(String token) {}
