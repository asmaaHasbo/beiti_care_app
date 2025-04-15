import 'package:flutter/cupertino.dart';

import 'package:smart_project_test/core/themes/colors.dart';

class ScreenName extends StatelessWidget {
  const ScreenName({super.key, required this.screenName});

  final String screenName ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          CupertinoIcons.chevron_left_square_fill,
          color: AppColors.mainColor,
          size: 24,
        ),
        Text(
          screenName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.mainColor,
          ),
        ),
      ],
    );
  }
}
