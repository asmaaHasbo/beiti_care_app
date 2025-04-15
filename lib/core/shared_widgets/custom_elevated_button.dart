import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.btnName,
    required this.btnSize,
    this.btnColor  = AppColors.mainColor,
    required this.onPressed,
  });

  final String btnName;
  final Size btnSize;
  final Color btnColor ;
  final VoidCallback onPressed ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: btnSize,
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        btnName,
        style:
            AppStyles.textStyle14?.copyWith(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
