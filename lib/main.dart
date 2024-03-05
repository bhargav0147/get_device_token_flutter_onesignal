import 'package:flutter/material.dart';
import 'package:get_device_token_flutter/Home_Screen.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const HomeScreen(),
  ));
  OneSignal.initialize('YOUR ONESIGNAL APP ID');
  // OneSignal.Notifications.displayNotification(
  //     OSNotificationDisplayType.notification as String);
}
