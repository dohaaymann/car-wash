// // reminder_service.dart
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// class ReminderService {
//   final FlutterLocalNotificationsPlugin _notificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//
//   ReminderService() {
//     final initializationSettings = InitializationSettings(
//       android: AndroidInitializationSettings('@mipmap/ic_launcher'),
//     );
//     _notificationsPlugin.initialize(initializationSettings);
//   }
//
//   void scheduleReminder(DateTime scheduledTime, String message) {
//     _notificationsPlugin.zonedSchedule(
//       0,
//       'Reminder',
//       message,
//       scheduledTime,
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           'reminder_channel',
//           'Reminders',
//           'Channel for booking reminders',
//         ),
//       ),
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation:
//       UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }
// }