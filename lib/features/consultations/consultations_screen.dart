import 'package:flutter/material.dart';
import 'package:smart_project_test/features/consultations/widgets/consultations_body.dart';

import 'package:smart_project_test/core/themes/colors.dart';

class ConsultationsScreen extends StatelessWidget {
  const ConsultationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: ConsultationsBody(),
    );
  }
}
