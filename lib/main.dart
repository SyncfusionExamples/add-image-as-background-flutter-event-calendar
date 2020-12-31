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
                view: CalendarView.day,
                allowedViews: <CalendarView>[
                  CalendarView.day,
                  CalendarView.week,
                  CalendarView.workWeek,
                  CalendarView.month,
                  CalendarView.timelineDay,
                  CalendarView.timelineWeek,
                  CalendarView.timelineWorkWeek,
                  CalendarView.timelineMonth,
                  CalendarView.schedule
                ],
                backgroundColor: Colors.transparent,
                cellBorderColor: Colors.white,
                headerStyle: CalendarHeaderStyle(
                    textStyle: TextStyle(color: Colors.blue)),
                viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle: TextStyle(color: Colors.white),
                    dateTextStyle: TextStyle(color: Colors.white)),
                timeSlotViewSettings: TimeSlotViewSettings(
                    timeTextStyle: TextStyle(color: Colors.white)),
                monthViewSettings: MonthViewSettings(
                    monthCellStyle: MonthCellStyle(
                        textStyle: TextStyle(color: Colors.white),
                        leadingDatesTextStyle: TextStyle(color: Colors.white),
                        trailingDatesTextStyle:
                            TextStyle(color: Colors.white))),
                scheduleViewSettings: ScheduleViewSettings(
                    monthHeaderSettings: MonthHeaderSettings(
                        backgroundColor: Colors.transparent,
                        monthTextStyle: TextStyle(color: Colors.blue))),
              )),
        )));
  }
}
