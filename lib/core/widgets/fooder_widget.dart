import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/themes/themes_app.dart';

class FooderWidget extends StatelessWidget {
  const FooderWidget({super.key});

  final String content =
      'This appis created as part of Hlsoltions program. The materials con-tained on this website are provided for ganaral information only and do not constitute any form of advice.HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on  the infor-mation contained on this site.';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: ThemeApp.textTheme.bodySmall?.copyWith(
              color: Colors.grey.shade500,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Copyright 2021 HLS',
          style: ThemeApp.textTheme.bodyMedium?.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
