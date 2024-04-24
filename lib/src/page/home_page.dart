import 'package:flutter/material.dart';

import 'package:loyout_bank/src/page/widgets/header.dart';

import 'package:loyout_bank/src/page/widgets/section_balance.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Header(),
        SectionBalance(),
      ],
    ));
  }
}
