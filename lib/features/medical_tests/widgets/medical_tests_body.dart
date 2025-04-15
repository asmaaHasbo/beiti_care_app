import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/screen_name.dart';
import 'package:smart_project_test/features/medical_tests/widgets/list_of_medical_items.dart';
import 'package:smart_project_test/features/medical_tests/widgets/search_button.dart';

class MedicalTestsBody extends StatelessWidget {
  const MedicalTestsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16.0, right: 20, left: 20, bottom: 16),
        child: Column(children: [
          ScreenName(screenName: 'Medical tests'),
          ListOfMedicalItems(),
          SizedBox(height: 5),
          SearchButton(),
        ]),
      ),
    );
  }
}

