import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

void main() => runApp(const REClock());


  


class REClock extends StatefulWidget {
  const REClock({super.key});
  @override
  State<REClock> createState() => _REClockState();
}

class _REClockState extends State<REClock> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RE Clock",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child:DigitalClock(
            
                  is24HourTimeFormat: false,
                  amPmDigitTextStyle: TextStyle(color: Colors.red[600],fontSize: 40),
                  secondDigitTextStyle:  TextStyle(color: Colors.red[600],fontSize: 40),
                  hourMinuteDigitTextStyle: TextStyle(color: Colors.red[600],fontSize: 100),
                  colon: const Icon(Icons.computer, size: 40,color: Colors.red,),
                  colonDecoration: BoxDecoration(
                      border: Border.all(), shape: BoxShape.circle),
                ) ,
        ),
      ),

    );
  }
}