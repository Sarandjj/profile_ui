import 'package:flutter/material.dart';

class StampBookWidget extends StatelessWidget {
  const StampBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Stamp Book is empty',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
