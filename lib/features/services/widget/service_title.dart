import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class ServiceTitle extends StatelessWidget {
  const ServiceTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffE8E7E7),
            border: Border.all(color: const Color(0xff8B8B8B), width: .3),
          ),
          child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 7.0,
                horizontal: 10,
              ),
              child: Image(
                image: AssetImage('assets/images/note_apple_icon.png'),
                width: 25,
                height: 25,
              )
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nutrition and Dietary Assessment',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColor,
                ),
              ),
              Text('Nutrition services', style: AppStyles.textStyle10),
            ],
          ),
        ),
      ],
    );
  }
}
