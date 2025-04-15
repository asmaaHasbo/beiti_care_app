import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/screen_name.dart';
import 'package:smart_project_test/core/shared_widgets/list_of_service_items.dart';

class ServicesBody extends StatelessWidget {
  const ServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 20, right: 20),
        child: Column(
          children: [
            ScreenName(screenName:'Services'),
            SizedBox(height: 15),
            ListOfServiceItems(),
          ],
        ),
      ),
    );
  }
}
