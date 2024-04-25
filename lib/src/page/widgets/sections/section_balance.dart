import 'package:flutter/material.dart';
import 'package:loyout_bank/src/theme/theme_color.dart';
import 'package:loyout_bank/src/widgets/box_section.dart';

import 'package:loyout_bank/src/widgets/dot_identifier.dart';

class SectionBalance extends StatelessWidget {
  const SectionBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BoxSection(
        contents: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIdentifier(
                        color: ThemeColor.colorDotBalance['withdraw'],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saída',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Text('\$650.63',
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIdentifier(
                          color: ThemeColor.colorDotBalance['deposit'],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Entrada',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text('\$1850.36',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Limite de gastos: \$432.93',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: _Progress(),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('Diga-me como'))
          ],
        ),
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  const _Progress();

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      color: ThemeColor.primaryColor,
      minHeight: 8,
      value: 0.6,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );
  }
}
