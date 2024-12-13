// booking_confirmation_screen.dart
import 'package:clean_wash/core/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookingConfirmationScreen extends StatelessWidget {
  final String service;
  final String date;
  final String time;

  const BookingConfirmationScreen({
    required this.service,
    required this.date,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking Confirmation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Card(
            color: ColorsManger.darkblue,
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Service: $service',
                    style: TextStyle(fontSize:22, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Date: $date',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Time: $time',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to home or other relevant page
                      Navigator.pop(context);
                    },
                    child: Text('Confirm'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}