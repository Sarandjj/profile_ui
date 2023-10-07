import 'package:flutter/material.dart';

class ProfileCountTitle extends StatelessWidget {
  const ProfileCountTitle(
      {super.key, required this.count, required this.titel});
  final String count;
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
        ),
        Text(
          titel,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
