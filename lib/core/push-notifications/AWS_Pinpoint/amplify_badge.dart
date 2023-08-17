import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> amplifyBadge() async {
  final badgeCount = await Amplify.Notifications.Push.getBadgeCount();
  Amplify.Notifications.Push.setBadgeCount(badgeCount);
}
