import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:aiyo/model/sport_day.dart';

class SportDayPage extends StatefulWidget {
  const SportDayPage({super.key});

  @override
  State<SportDayPage> createState() => _SportDayPageState();
}

class _SportDayPageState extends State<SportDayPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusDay = DateTime.now();
  String pickedTime = "";
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final TextEditingController _timeC = TextEditingController();
  late TimeOfDay time;
  Map<DateTime, List<SportDay>> SportDays = {};

  @override
  void _onDaySelected(DateTime selectedDay, DateTime focusDay) {
    if (!isSameDay(selectedDay, _selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusDay = focusDay;
      });
    }
  }

  List<SportDay> _getEvent(DateTime day) {
    return SportDays[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a time to exercise !'),
        backgroundColor: const Color(0xFFE6CAFB),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Sport Time'),
                  content: Column(
                    children: [
                      TextButton(
                          onPressed: () async {
                            time = (await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now()))!;
                            if (time != null) {
                              setState(() {
                                _timeC.text = "${time.hour}:${time.minute}";
                              });
                            }
                          },
                          child: Text('pick time')),
                      TextFormField(
                        controller: _timeC,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)),
                            )),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print(_selectedDay.month);
                            print(_selectedDay.day);
                            SportDays.addAll({
                              _selectedDay!: [
                                SportDay(
                                  title: 'GO AND EXERCISE',
                                  date: DateTime(
                                      _selectedDay.month,
                                      _selectedDay.day,
                                      time.hour,
                                      time.minute),
                                  durationTime: 0,)
                              ]
                            });
                            Navigator.pop(context);
                          },
                          child: Text('submit'))
                    ],
                  ),
                );
              });
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 5, right: 5),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusDay,
              calendarFormat: _calendarFormat,
              onPageChanged: (focusedDay) {
                _focusDay = focusedDay;
              },
              eventLoader: _getEvent,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {

                  });
                  _calendarFormat = format;
                }
              },
              onDaySelected: _onDaySelected,
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount:,
            //     itemBuilder: (context,index){
            //       for(var date in SportDays){
            //         if(date == _selectedDay){
            //           return ListTile();
            //         }
            //       }
            //     },),
            // )
          ],
        ),
      ),
    );
  }
}
