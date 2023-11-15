import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/themes/themes_app.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(88, 176, 107, 1),
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Column(
        children: [
          Text(
            'A joke a day keeps the doctor aways',
            style: ThemeApp.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'If you joke wrong wa, your teeth have to pay.(Serious)',
            style: ThemeApp.textTheme.bodySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
