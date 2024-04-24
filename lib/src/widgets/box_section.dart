import 'package:flutter/material.dart';

class BoxSection extends StatelessWidget {
  final Widget contents;
  const BoxSection({super.key, required this.contents});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(child: contents),
    );
  }
}
