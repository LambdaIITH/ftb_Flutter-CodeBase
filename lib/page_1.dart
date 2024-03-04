
import 'package:flutter/material.dart';
import 'package:flutter_bugs/constants/colors.dart';
import 'package:flutter_bugs/constants/routes.dart';
import 'package:flutter_bugs/customized_popup_menu.dart';
import 'package:flutter_bugs/enums/num_people.dart';
import 'package:flutter_bugs/enums/time_slot.dart';

// ignore: must_be_immutable
class PageOne extends StatelessWidget {
  PageOne({super.key});
  late TimeSlot time;
  NumPeople numPeople = NumPeople.one;

  @override
  Widget build(BuildContext context) {
    time = ModalRoute.of(context)!.settings.arguments as TimeSlot;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop Up Menus'),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(page2);
        },
        child: const Text('Move to the next page'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Why is the text not updating?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: blueShade),
              ),
              const SizedBox(height: 30),
              CustomizedPopUpMenu<TimeSlot>(
                value: time,
                options: TimeSlot.values,
                onOptionSelected: (TimeSlot value) {
                  time = value;
                },
                getLabel: (TimeSlot value) => value.toString().split('.').last,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Slot',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  Text(time.toString().split('.').last),
                ],
              ),
              const SizedBox(height: 100),
              CustomizedPopUpMenu<NumPeople>(
                value: numPeople,
                options: NumPeople.values,
                onOptionSelected: (NumPeople value) {
                  numPeople = value;
                },
                getLabel: (NumPeople value) => value.toString().split('.').last,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Number of People',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  Text(numPeople.value.toString().split('.').last),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
