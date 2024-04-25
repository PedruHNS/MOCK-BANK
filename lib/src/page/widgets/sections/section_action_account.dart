import 'package:flutter/material.dart';
import 'package:loyout_bank/src/widgets/box_section.dart';

class SectionActionAccount extends StatelessWidget {
  const SectionActionAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text('Ações da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: const BoxSection(
                  contents: _ContentCard(
                    text: 'Depositar',
                    icon: Icons.account_balance_wallet,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: const BoxSection(
                  contents: _ContentCard(
                    text: 'Transferir',
                    icon: Icons.cached,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: const BoxSection(
                  contents: _ContentCard(
                    text: 'Ler',
                    icon: Icons.center_focus_strong,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ContentCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const _ContentCard({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon),
          ),
          Text(text),
        ],
      ),
    );
  }
}
