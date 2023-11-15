import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/themes/themes_app.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget(
      {super.key,
      required this.content,
      this.onLike,
      this.onDisLike,
      this.isRefresh = false,
      this.onRefresh});

  final String content;
  final void Function()? onLike;
  final void Function()? onDisLike;
  final void Function()? onRefresh;
  final textColor = Colors.white;
  final bool isRefresh;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
        child: Column(
          children: [
            Text(
              content,
              textAlign: TextAlign.start,
              style: ThemeApp.textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            isRefresh
                ? IconButton(
                    onPressed: onRefresh,
                    icon: Icon(Icons.refresh),
                  )
                : const SizedBox(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: onLike,
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text(
                      'This is Funny!',
                      style: ThemeApp.textTheme.bodySmall?.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: const Color.fromRGBO(88, 176, 107, 1),
                    ),
                    onPressed: onDisLike,
                    child: Text(
                      'This is not funny.',
                      style: ThemeApp.textTheme.bodySmall?.copyWith(
                        color: textColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
