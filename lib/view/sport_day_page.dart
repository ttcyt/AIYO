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
  DateTime _focusedDay = DateTime.now();
  String pickedTime = "";
  final TextEditingController _timeC = TextEditingController();
  late final ValueNotifier<List<SportDay>> _selectEvent;
  Map<DateTime, List<SportDay>> SportDays = {};
  @override
  void initState() {
    super.initState();
    _selectEvent = ValueNotifier(_getEvent(_selectedDay!));
  }

  List<SportDay> _getEvent(DateTime day) {
    return SportDays[day] ??[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select a time to exercise !'),backgroundColor: const Color(0xFFE6CAFB),),
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
                            var time = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
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
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        )),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            SportDays.addAll({_selectedDay:[SportDay(date: DateTime(_selectedDay.month,_selectedDay.day,_selectedDay.hour,_selectedDay.minute), durationTime: 0)]});
                            Navigator.pop(context);
                            _selectEvent.value = _getEvent(_selectedDay);
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
                focusedDay: DateTime.now(),
                eventLoader: _getEvent,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                    _selectEvent.value = _getEvent(_selectedDay);// update `_focusedDay` here as well
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                }),
            Expanded(
              child: ValueListenableBuilder(
                  valueListenable: _selectEvent, builder: (context,value,_) {
                    return ListView.builder(
                      itemCount: value.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text('${value[index].date.month}月${value[index].date.day} '
                                  '${value[index].date.hour}:${value[index].date.minute}')
                            ],
                          ),
                        ),
                      );
                    });
              }),
            )
          ],
        ),
      ),
    );
  }
}
