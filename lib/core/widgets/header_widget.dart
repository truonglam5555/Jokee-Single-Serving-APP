import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/path_images/path_images.dart';
import 'package:jokeesingleserving/core/themes/themes_app.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            logo,
            width: 40,
            height: 40,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Handicrafted by',
                style: ThemeApp.textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade700,
                  fontSize: 10,
                ),
              ),
              Text(
                'Jim HLS',
                style: ThemeApp.textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(summer),
          )
        ],
      ),
    );
  }
}
