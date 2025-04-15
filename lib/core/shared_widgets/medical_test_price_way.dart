import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class MedicalTestPriceWay extends StatelessWidget {
  const MedicalTestPriceWay({
    super.key,
    required this.nameOfPriceWay,
    required this.testPrice,
    required this.colorOfTestPrice,
  });

  final String nameOfPriceWay;
  final String testPrice;
  final Color colorOfTestPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameOfPriceWay,
          style: AppStyles.textStyle12?.copyWith(color: Colors.black),
        ),
        Text(
          testPrice,
          style: AppStyles.textStyle12?.copyWith(color: colorOfTestPrice),
        )
      ],
    );
  }
}
