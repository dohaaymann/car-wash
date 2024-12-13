import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feedback')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'How was your experience?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your feedback',
              ),
              maxLines: 4,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save feedback
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}