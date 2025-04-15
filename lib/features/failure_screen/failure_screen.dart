import 'package:flutter/material.dart';
import 'package:smart_project_test/features/failure_screen/widgets/failure_screen_body.dart';
import 'package:smart_project_test/core/themes/colors.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: FailureScreenBody(),
    );
  }
}
