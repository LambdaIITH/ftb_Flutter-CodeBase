import 'package:flutter/material.dart';
import 'package:flutter_bugs/constants/colors.dart';
import 'package:flutter_bugs/constants/routes.dart';
import 'package:flutter_bugs/enums/time_slot.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bugs'),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(page1, arguments: TimeSlot.morning);
          },
          child: const Text('Check out the bugs'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Guidelines & Instructions',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '1. You are not allowed to make any changes here. Go to the next page to find the bugs.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: blueShade,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '2. Bugs may be there on some page but it is possible that their fix is on other page.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: blueShade,
              ),
            ),
          ],
        )));
  }
}
