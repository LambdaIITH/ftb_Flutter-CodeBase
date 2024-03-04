import 'package:flutter/material.dart';
import 'package:flutter_bugs/constants/colors.dart';

Widget getNotification({required String title}) {
  return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: blackColor),
      ),
      leading: const Icon(
        Icons.notifications,
        color: blackColor,
      ),
      title: Text(title),
      titleTextStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: blackColor,
      ),);
}
