import 'package:flutter/cupertino.dart';
import 'package:smart_project_test/features/doctors/widgets/doctor_item.dart';

class ListOfDoctorsItem extends StatelessWidget {
  const ListOfDoctorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder:(context, index) => const DoctorItem(),
      ),
    );
  }
}
