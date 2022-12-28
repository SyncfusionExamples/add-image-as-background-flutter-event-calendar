import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const Background_Image());

class Background_Image extends StatelessWidget {
  const Background_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: Container(
                  constraints: const BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("icons/image.png"),
                          fit: BoxFit.cover)),
                  child: SfCalendar(
                    view: CalendarView.day,
                    allowedViews: const <CalendarView>[
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
                    headerStyle: const CalendarHeaderStyle(
                        textStyle: TextStyle(color: Colors.blue)),
                    viewHeaderStyle: const ViewHeaderStyle(
                        dayTextStyle: TextStyle(color: Colors.white),
                        dateTextStyle: TextStyle(color: Colors.white)),
                    timeSlotViewSettings: const TimeSlotViewSettings(
                        timeTextStyle: TextStyle(color: Colors.white)),
                    monthViewSettings: const MonthViewSettings(
                        monthCellStyle: MonthCellStyle(
                            textStyle: TextStyle(color: Colors.white),
                            leadingDatesTextStyle: TextStyle(
                                color: Colors.white),
                            trailingDatesTextStyle:
                            TextStyle(color: Colors.white))),
                    scheduleViewSettings: const ScheduleViewSettings(
                        monthHeaderSettings: MonthHeaderSettings(
                            backgroundColor: Colors.transparent,
                            monthTextStyle: TextStyle(color: Colors.blue))),
                  )),
            )));
  }
}