import 'package:flutter/material.dart';
import 'package:smart_project_test/core/shared_widgets/custom_elevated_button.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/core/themes/styles.dart';
import 'package:smart_project_test/core/shared_widgets/service_price_and_duration.dart';

import 'doctor_img.dart';
import 'doctor_name.dart';
import 'list_of_star_icons.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff8B8B8B), width: .6),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 5),
                const DoctorImg(),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DoctorName(),
                    const ListOfStarIcons(),
                    const SizedBox(width: 5),
                    const ServicePriceAndDuration(),
                    Text(
                      'Number of cases served 22',
                      style: AppStyles.textStyle14?.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomElevatedButton(
              btnName: 'Book Now',
              btnSize: const Size(327, 40),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

