import 'package:flutter/material.dart';
import 'package:smart_project_test/features/doctors/widgets/doctors_body.dart';

import 'package:smart_project_test/core/themes/colors.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: DoctorsScreenBody(),
    );
  }
}
