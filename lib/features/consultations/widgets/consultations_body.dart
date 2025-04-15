import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/list_of_service_items.dart';
import 'package:smart_project_test/core/shared_widgets/screen_title.dart';

class ConsultationsBody extends StatelessWidget {
  const ConsultationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 20, right: 20),
        child: Column(
          children: [
            ScreenTitle(screenName: 'Consultations'),
            SizedBox(height: 16),
            ListOfServiceItems(),
          ],
        ),
      ),
    );
  }
}
