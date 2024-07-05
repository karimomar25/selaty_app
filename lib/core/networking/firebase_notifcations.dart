import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:selaty_app/features/notification_test/test.dart';
import 'package:short_navigation/short_navigation.dart';

class FirebaseNotifcations {
  /// 1 -  creat instance of FBM
  final _firebaseMessaging = FirebaseMessaging.instance;

// A-  create func to init the notications
  Future<void> initNotications() async {
    // take the permission
    await _firebaseMessaging.requestPermission();
    // take the token -- every device has its own tkoen
    String? token = await _firebaseMessaging.getToken();
    // ignore: avoid_print
    print("Token: $token");
    // >> go to main and call this func

    handelBackgroundNotification();
  }

  // B- create a func to handele the notification

  void hendelMessage(RemoteMessage? message) {
    if (message == null) return;
    Go.toName(Test.routName, arguments: message);
    // Go.navigatorKey.currentState!.pushNamed("test", arguments: message);
    // we passed the message to the view we want to get in when we tap in the notificaton to view the notifaction details
// then go create this key in the main file
// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  }

  // C- handel the background notifications to get notifications even the app is trimenated

  Future handelBackgroundNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(hendelMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(hendelMessage);
    // then add onMessageOpenedApp to the initNotifications func above
  }
}
