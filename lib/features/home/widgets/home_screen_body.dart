import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/features/doctors/doctors_screen.dart';
import 'package:smart_project_test/features/failure_screen/failure_screen.dart';
import 'package:smart_project_test/features/home/widgets/custom_bottom_navigation.dart';
import 'package:smart_project_test/features/medical_tests/medical_tests_screen.dart';
import 'package:smart_project_test/features/search/search_screen.dart';
import 'package:smart_project_test/features/services/services_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<Widget> screens = [
    const MedicalTestsScreen(),
    const DoctorsScreen(),
    const ServicesScreen(),
    const SearchScreen(),
    const FailureScreen(),
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigation(
          currentIndex: currentIndex,
          onTap:(index) => setState(() => currentIndex = index),
      ),
    );
  }
}
