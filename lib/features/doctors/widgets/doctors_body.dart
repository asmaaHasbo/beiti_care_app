import 'package:flutter/cupertino.dart';
import 'package:smart_project_test/features/doctors/widgets/list_of_doctors_item.dart';
import 'package:smart_project_test/core/shared_widgets/screen_title.dart';

class DoctorsScreenBody extends StatelessWidget {
  const DoctorsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            ScreenTitle(screenName: 'Doctors'),
            SizedBox(height: 16),
            ListOfDoctorsItem(),
          ],
        ),
      ),
    );
  }
}
