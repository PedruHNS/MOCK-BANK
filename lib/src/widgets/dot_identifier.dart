import 'package:flutter/material.dart';

class DotIdentifier extends StatelessWidget {
  final Color? color;
  const DotIdentifier({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
