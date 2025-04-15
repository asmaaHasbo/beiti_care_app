import 'package:flutter/cupertino.dart';
import 'package:smart_project_test/features/medical_tests/widgets/medical_test_item.dart';

class ListOfMedicalItems extends StatelessWidget {
  const ListOfMedicalItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const MedicalTestItem(),
      ),
    );
  }
}
