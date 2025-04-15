import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.mainColor,
        backgroundColor: const Color(0xffF0F0F0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(
            color: Color(0xff8B8B8B),
            width: .3,
          ),
        ),
      ),
      onPressed: () {},
      child: const Text('Show More',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.mainColor,
          )),
    );
  }
}
