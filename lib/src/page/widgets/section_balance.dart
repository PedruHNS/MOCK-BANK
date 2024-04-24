import 'package:flutter/material.dart';
import 'package:loyout_bank/src/theme/theme_color.dart';
import 'package:loyout_bank/src/widgets/box_section.dart';

import 'package:loyout_bank/src/widgets/dot_identifier.dart';

class SectionBalance extends StatelessWidget {
  const SectionBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxSection(
      contents: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saída',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DotIdentifier(color: Colors.red),
                        Text(
                          '\$1300',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entrada',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DotIdentifier(color: Colors.blue),
                          Text(
                            '\$1900',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
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
  const _Progress({super.key});

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
