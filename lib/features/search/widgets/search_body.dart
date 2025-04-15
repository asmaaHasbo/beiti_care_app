import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/screen_title.dart';
import 'package:smart_project_test/features/medical_tests/widgets/search_button.dart';
import 'package:smart_project_test/core/shared_widgets/custom_search_drop_down.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            const ScreenTitle(screenName: 'Search'),
            const SizedBox(height: 16),

            CustomSearchDropDown(
              searchFieldName: 'Service type',
              hint: 'Select the service',
            ),
            const SizedBox(height: 14),

            CustomSearchDropDown(
              searchFieldName: 'Search range km',
              hint: 'Select the service',
            ),

            const Spacer(flex: 1),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
