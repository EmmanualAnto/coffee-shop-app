import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:coffeeshop_app/notification.dart';
import 'package:coffeeshop_app/products.dart';
import 'package:coffeeshop_app/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: 'Basic_channel',
            channelName: 'Basic_notification',
            channelDescription: 'Notification for basic channel')
      ],
      debug: true);
  runApp(
    ChangeNotifierProvider(
      create: (_) => Products(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}
