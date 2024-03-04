import 'package:flutter/material.dart';
import 'package:flutter_bugs/constants/colors.dart';
import 'package:flutter_bugs/constants/routes.dart';
import 'package:flutter_bugs/heading_with_more.dart';
import 'package:flutter_bugs/notification.dart';

// ignore: must_be_immutable
class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  final int _unreadNum = 7;
  final int _readNum = 17;

  // Boolean flags to control visibility
  bool _showUnreadNotifications = false;
  bool _showReadNotifications = false;

  // changes only in the build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('What the Empty Space #\$#!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: blackColor,
              )),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                    child: Text('Hint'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'One of the bugs here is related to page-1.'),
                        ),
                      );
                    })),
          ],
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(page3);
          },
          child: const Text('Move to the next page'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            itemCount: 2 + _unreadNum + _readNum,
            itemBuilder: (context, index) {
              if (index == 0) {
                return HeadingWithMore(
                  count: _unreadNum,
                  heading: 'New messages',
                  onPressed: () {
                    _showUnreadNotifications = !_showUnreadNotifications;
                  },
                );
              } else if (index == _unreadNum + 1) {
                return HeadingWithMore(
                  count: _readNum,
                  heading: 'Old messages',
                  onPressed: () {
                    _showReadNotifications = !_showReadNotifications;
                  },
                );
              } else if (index <= _unreadNum) {
                const title =
                    'First of all, on clicking New Messages, Old Messages, more messages should toggle(hidden and visible). But they are not. Why?';

                return Visibility(
                    visible: _showUnreadNotifications || index == 1,
                    child: getNotification(title: title));
              } else {
                const title =
                    'Why is there a lot of extra space when new messages are hidden. ';

                return Visibility(
                    visible: _showReadNotifications || index == _unreadNum + 2,
                    child: getNotification(
                      title: title,
                    ));
              }
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 20);
            },
          ),
        ));
  }
}
