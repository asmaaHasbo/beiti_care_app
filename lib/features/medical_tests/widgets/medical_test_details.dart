import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'medical_test_title.dart';
import 'package:smart_project_test/core/shared_widgets/medical_test_price.dart';

class MedicalTestDetails extends StatelessWidget {
  const MedicalTestDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MedicalTestTitle(),
        MedicalTestPrice(
          nameOfPriceWay: 'In case of cash ', testPrice: '200 EGP',
          colorOfTestPrice: AppColors.secondaryColor
          ,),
        MedicalTestPrice(
          nameOfPriceWay: 'Booking through the application is ', testPrice: '50 EGP',
          colorOfTestPrice: AppColors.mainColor
          ,),
      ],
    );
  }
}
