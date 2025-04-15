import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/features/services/widget/services_body.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackgroundColor ,
      body: ServicesBody(),
    );
  }
}
