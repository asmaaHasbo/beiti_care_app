import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_project_test/features/medical_tests/widgets/search_button.dart';

import 'package:smart_project_test/core/shared_widgets/screen_title.dart';

class FailureScreenBody extends StatelessWidget {
  const FailureScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScreenTitle(screenName: 'Failure'),
            Spacer(flex: 1,),
            SizedBox(
              width: 246,
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.xmark_circle,
                    color: Colors.red,
                    size: 80,
                  ),
                  Text(
                    'Sorry! Something Went Wrong',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff263238),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Text(
              'This Page didn`t load google maps correctly, See the javascript console for technical details.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff8B8B8B),
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1,),
            SearchButton()

          ],
        ),
      ),
    );
  }
}
