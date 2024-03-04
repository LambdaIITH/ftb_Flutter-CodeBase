import 'package:flutter/material.dart';

class HeadingWithMore extends StatelessWidget {
  final int count;
  final String heading;
  final Function() onPressed;
  const HeadingWithMore({
    super.key,
    required this.count,
    required this.heading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                heading,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10),
              Text(
                '$count',
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
