import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class ServicePriceAndDuration extends StatelessWidget {
  const ServicePriceAndDuration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage('assets/images/dollar_icon.png'),
          width: 25,
          height: 25,
        ),
        Text('35 D.A',
            style: AppStyles.textStyle10
                ?.copyWith(color: const Color(0xffC69100)),),
        const SizedBox(
          width: 20,
        ),

        //---------------- service duration ----------

        const Icon(
          Icons.access_time_sharp,
          size: 16,
        ),
        Text(
          '40-60 Minutes',
          style: AppStyles.textStyle10?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
