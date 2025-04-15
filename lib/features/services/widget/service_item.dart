import 'package:flutter/material.dart';
import 'package:smart_project_test/features/services/widget/service_description.dart';
import 'package:smart_project_test/core/shared_widgets/service_price_and_duration.dart';
import 'package:smart_project_test/features/services/widget/service_title.dart';
import 'package:smart_project_test/features/services/widget/show_more_button.dart';

import 'find_nurse_button.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffD9D9D9), width: .6),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            ServiceTitle(),
            SizedBox(height: 10),
            ServiceDescription(),
            SizedBox(height: 10),
            ServicePriceAndDuration(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FindNurseButton(),
                ShowMoreButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
