import 'package:flutter/material.dart';

import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/features/search/widgets/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false, // ✨ ده اللي يمنع رفع المحتوى فوق الكيبورد

      backgroundColor: AppColors.screenBackgroundColor,
      body: SearchBody(),

    );
  }
}
