import 'package:weekly_date_picker/weekly_date_picker.dart';
import 'package:flutter/material.dart';

class InlineCalender extends StatefulWidget {
  Function changeHabitDate;
  final DateTime habitDate;

  InlineCalender(
      {super.key, required this.changeHabitDate, required this.habitDate});
  @override
  State<InlineCalender> createState() {
    // TODO: implement createState
    return InlineCalenderState();
  }
}

class InlineCalenderState extends State<InlineCalender> {
  DateTime? habitDate;

  @override
  void initState() {
    // TODO: implement initState

    habitDate = widget.habitDate;
    print(" date : ${habitDate}");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      child: Column(
        children: [
          WeeklyDatePicker(
            selectedDay: widget.habitDate,
            changeDay: (value) {
              print("${value}");

              setState(() {
                habitDate = value;
              });
              widget.changeHabitDate(value);
            },
            enableWeeknumberText: false,
            weeknumberColor: const Color(0xFF57AF87),
            weeknumberTextColor: Colors.white,
            backgroundColor: const Color(0xFF1A1A1A),
            weekdayTextColor: const Color(0xFF8A8A8A),
            digitsColor: Colors.white,
            selectedBackgroundColor: Color.fromARGB(255, 28, 184, 106),
            // weekdays: ["Mo", "Tu", "We", "Th", "Fr"],
            // daysInWeek: 5,
          ),
        ],
      ),
    );
  }
}
