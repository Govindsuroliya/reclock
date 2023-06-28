import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:keep_screen_on/keep_screen_on.dart';

void main()  {
WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_){
runApp(REClock());
});
}


  


class REClock extends StatefulWidget {
  const REClock({super.key});
  @override
  State<REClock> createState() => _REClockState();
}

class _REClockState extends State<REClock> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    KeepScreenOn.turnOn();
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
                  colon: const Text(":",style: TextStyle(fontSize: 70,color: Colors.red),),
                  colonDecoration: BoxDecoration(
                      border: Border.all(), shape: BoxShape.circle),
                ) ,
        ),
      ),

    );
  }
}