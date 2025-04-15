import 'package:flutter/material.dart';

import 'package:smart_project_test/core/shared_widgets/custom_elevated_button.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/features/search/search_screen.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      btnName: 'Search',
      btnSize: const Size(338, 50),
      btnColor: AppColors.mainColor,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),);
      },
    );
  }
}
