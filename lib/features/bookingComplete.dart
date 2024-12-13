import 'package:flutter/material.dart';
class Bookingcomplete extends StatefulWidget {
  const Bookingcomplete({super.key});

  @override
  State<Bookingcomplete> createState() => _BookingcompleteState();
}

class _BookingcompleteState extends State<Bookingcomplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          children:[
            // Icon(Icons.right),
            SizedBox(height:15),
            Text("Booking Completed Successfuly",style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize:20,color:Colors.blue
            ))
          ]
        )
      )
    );
  }
}
