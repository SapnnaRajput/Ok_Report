import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/constants/colors.dart';
import '../widget/switch_widget.dart';
import 'customized_event_mode_setting/customized_event_mode_setting.dart';

class EventAndAiPreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Event & Ai Preferences",
          style: TextStyle(
            color: ORColors.buttonPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchWidget(title: "Event Mode", isTrue: true),
            Divider(thickness: 0.5),
            SwitchWidget(title: "AI Smart Alert", isTrue: true),
            Divider(thickness: 0.5),
            GestureDetector(
              onTap: () {
                showCalendarBottomSheet(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Customize Event mode Settings",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ORColors.textPrimary),
                ),
              ),
            ),
            Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Set Hydration Remainders",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ORColors.textPrimary),
              ),
            ),
            Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }

  void showCalendarBottomSheet(BuildContext context) {
    DateTime selectedDay = DateTime.now();
    DateTime focusedDay = DateTime.now();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: focusedDay,
                      selectedDayPredicate: (day) {
                        return isSameDay(selectedDay, day);
                      },
                      onDaySelected: (newSelectedDay, newFocusedDay) {
                        setState(() {
                          selectedDay = newSelectedDay;
                          focusedDay = newFocusedDay;
                        });
                      },
                      calendarFormat: CalendarFormat.month,
                      availableCalendarFormats: const {
                        CalendarFormat.month: 'Month'
                      },
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        leftChevronIcon: Icon(Icons.arrow_left),
                        rightChevronIcon: Icon(Icons.arrow_right),
                      ),
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color: ORColors.primaryColor.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        selectedDecoration: BoxDecoration(
                          color: ORColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        defaultDecoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          shape: BoxShape.circle,
                        ),
                        weekendDecoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          shape: BoxShape.circle,
                        ),
                        outsideDaysVisible: false,
                        todayTextStyle: TextStyle(color: Colors.white),
                        selectedTextStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Selected Date: ${selectedDay.day}/${selectedDay.month}/${selectedDay.year}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: ORColors.primaryColor),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: ORColors.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Get.to(() => CustomizedEventModeSetting());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ORColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "Select date",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
