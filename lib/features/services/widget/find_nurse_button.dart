import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/navigation_function.dart';

import 'package:smart_project_test/core/themes/styles.dart';
import 'package:smart_project_test/features/search/search_screen.dart';

class FindNurseButton extends StatelessWidget {
  const FindNurseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        fixedSize: const Size(169, 34),
        backgroundColor: const Color(0xff49768C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {
        navigationFunction(context: context, screen: const SearchScreen());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Find a nurse',
            style: AppStyles.textStyle10?.copyWith(color: Colors.white),
          ),
          const Icon(
            Icons.search,
            size: 14.5,
          )
        ],
      ),
    );
  }
}
