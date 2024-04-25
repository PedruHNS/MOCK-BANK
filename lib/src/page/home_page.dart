import 'package:flutter/material.dart';

import 'package:loyout_bank/src/page/widgets/header.dart';
import 'package:loyout_bank/src/page/widgets/sections/section_action_account.dart';

import 'package:loyout_bank/src/page/widgets/sections/section_balance.dart';
import 'package:loyout_bank/src/page/widgets/sections/section_point_account.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        Header(),
        SectionBalance(),
        SectionActionAccount(),
        SectionPointAccount(),
      ],
    ));
  }
}
