import 'package:flutter/material.dart';

class BoxSection extends StatelessWidget {
  final Widget contents;
  const BoxSection({super.key, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: kElevationToShadow[3],
      ),
      child: contents,
    );
  }
}
