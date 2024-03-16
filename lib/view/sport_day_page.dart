import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SportDayPage extends StatefulWidget {
  const SportDayPage({super.key});

  @override
  State<SportDayPage> createState() => _SportDayPageState();
}

class _SportDayPageState extends State<SportDayPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6CAFB),
      body: Padding(
        padding: EdgeInsets.only(top: 50,left: 5,right: 5),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
