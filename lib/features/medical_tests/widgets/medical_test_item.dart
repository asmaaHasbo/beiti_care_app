import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';

import 'medical_test_details.dart';

class MedicalTestItem extends StatelessWidget {
  const MedicalTestItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.secondaryColor, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //----------------- icon ---------------
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(
                'assets/images/coin_icon.png',
                width: 12,
              ),
            ),
            const SizedBox(width: 5),

            //----------------- - details ---------------
            const MedicalTestDetails(),

            //----------------- icon ---------------
            const Icon(
              Icons.add_box_outlined,
              color: AppColors.secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
