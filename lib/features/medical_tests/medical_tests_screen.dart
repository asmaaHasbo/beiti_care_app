import 'package:flutter/material.dart';
import 'package:smart_project_test/features/medical_tests/widgets/medical_tests_body.dart';

import '../../core/themes/colors.dart';

class MedicalTestsScreen extends StatelessWidget {
  const MedicalTestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: MedicalTestsBody(),
    );
  }
}
