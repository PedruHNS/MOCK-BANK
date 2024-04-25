import 'package:flutter/material.dart';
import 'package:loyout_bank/src/theme/theme_color.dart';
import 'package:loyout_bank/src/widgets/box_section.dart';
import 'package:loyout_bank/src/widgets/dot_identifier.dart';

class SectionPointAccount extends StatelessWidget {
  const SectionPointAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text('Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const BoxSection(contents: _ContentPoint()),
        ],
      ),
    );
  }
}

class _ContentPoint extends StatelessWidget {
  const _ContentPoint();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pontos totais:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                '7400',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('Objetivos:',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: DotIdentifier(
                      color: ThemeColor.colorDotPoint['objective_primary']),
                ),
                Text('Entrega grátis: 17660pts',
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: DotIdentifier(
                      color: ThemeColor.colorDotPoint['objective_secundary']),
                ),
                Text(
                  '1 mês de streaming: 300000pts',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
