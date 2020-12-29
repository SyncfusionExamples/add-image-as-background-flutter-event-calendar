import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(Background_Image());

class Background_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("icons/image.png"), fit: BoxFit.cover)),
              child: SfCalendar(
                backgroundColor: Colors.transparent,
                cellBorderColor: Colors.white,
                headerStyle: CalendarHeaderStyle(
                    textStyle: TextStyle(color: Colors.white)),
                viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle: TextStyle(color: Colors.white),
                    dateTextStyle: TextStyle(color:Colors.white)),
                timeSlotViewSettings: TimeSlotViewSettings(timeTextStyle: TextStyle(color: Colors.white)),
              )),
        )));
  }
}
