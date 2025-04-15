import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class MedicalTestTitle extends StatelessWidget {
  const MedicalTestTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Blood Urea (Urea or BUN )',
      style: AppStyles.textStyle14?.copyWith(color: Colors.black),
    );
  }
}
