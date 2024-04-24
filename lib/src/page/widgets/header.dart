import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6763EA),
              Color(0xff9B69FE),
              Color(0xffC36BFF),
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: '\$',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: '1500',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ),
              Text(
                'Balanço disponível',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const Icon(
            Icons.account_circle,
            size: 42,
          ),
        ],
      ),
    );
  }
}
