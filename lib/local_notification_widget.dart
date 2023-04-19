import 'package:flutter/material.dart';
import 'package:onsignel_pushnotification/notification_services.dart';
import 'package:timezone/data/latest.dart' as tz;

class LocalNotificationButton extends StatefulWidget {
  const LocalNotificationButton({
    super.key,
  });

  @override
  State<LocalNotificationButton> createState() =>
      _LocalNotificationButtonState();
}

class _LocalNotificationButtonState extends State<LocalNotificationButton> {
  @override
  void initState() {
    tz.initializeTimeZones();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          NotificationService()
              .showNotifications(101, 'Sample title', 'Its worked!', 2);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Local push-notification',
              style: TextStyle(fontSize: 16),
            ),
            Divider(
              color: Colors.white,
            ),
            Text(
              'click here to see a local push notification',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
