import 'package:flutter/cupertino.dart';

import 'package:smart_project_test/core/themes/styles.dart';

class DoctorName extends StatelessWidget {
  const DoctorName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ahmed Mohamed',
      style: AppStyles.textStyle14?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
