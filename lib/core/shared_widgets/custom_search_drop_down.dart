import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:smart_project_test/features/search/widgets/buildSuggestionListDecoration.dart';
import 'package:smart_project_test/features/search/widgets/build_search_input_decoration.dart';

class CustomSearchDropDown extends StatelessWidget {
  CustomSearchDropDown({
    super.key,
    required this.searchFieldName,
    required this.hint,
  });

  final String searchFieldName;
  final String hint;

  final List<String> suggestions = [
    'Nutrition',
    'Catheterization',
    'Nutrition',
    'Catheterization',
    'Nutrition',
    'Catheterization',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-------- lapel ------------
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  searchFieldName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xff5E5C5C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SearchField<String>(
                //-------------------- search input style --------
                searchInputDecoration: buildSearchInputDecoration(hint: hint),

                //-----------------
                suggestionState: Suggestion.expand,
                itemHeight: 50,
                maxSuggestionsInViewPort: 6,

                //------------------- iteration on suggestion list --------
                suggestions:
                    suggestions
                        .map((e) => SearchFieldListItem<String>(e))
                        .toList(),

                //------------------ give selected item back color suggestion list border radius -----
                suggestionsDecoration: buildSuggestionListDecoration(),

                //---------------------- delete the suggestionItem under border
                suggestionItemDecoration: BoxDecoration(
                  border: const Border(bottom: BorderSide.none),
                  borderRadius: BorderRadius.circular(1),
                ),

                //----------------------
                onSuggestionTap: (val) {
                  // print('You selected: ${val.searchKey}');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
