// reschedule_cancel_screen.dart
import 'package:flutter/material.dart';

class RescheduleCancelScreen extends StatelessWidget {
  const RescheduleCancelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'What would you like to do?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to reschedule screen
              },
              child: Text('Reschedule Appointment'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Navigate to cancel confirmation
              },
              child: Text('Cancel Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}