
import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/screen_title.dart';
import 'package:smart_project_test/features/medical_tests/widgets/search_button.dart';
import 'package:smart_project_test/core/shared_widgets/custom_search_drop_down.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: SingleChildScrollView(

          child: Expanded(
            child: Column(
              children: [
                ScreenTitle(screenName: 'Search'),
                SizedBox(height: 16),

                CustomSearchDropDown(
                  searchFieldName: 'Service type',
                  hint: 'Select the service',
                ),
                SizedBox(height: 14),

                CustomSearchDropDown(
                  searchFieldName: 'Search range km',
                  hint: 'Select the service',
                ),
                SizedBox(height: 220,),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SearchButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
