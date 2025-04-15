import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_project_test/features/doctors/doctors_screen.dart';
import 'package:smart_project_test/features/home/home_screen.dart';
import 'package:smart_project_test/features/services/services_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),

      home: const ServicesScreen()
    );
  }
}



// bottomNavigationBar: CurvedNavigationBar(
// index: ShopCubit.get(context).currentindex,
// onTap: (value) => ShopCubit.get(context).ChangeBottom(value),
// color: HexColor('#087083'),
// backgroundColor: Colors.white,
// animationDuration: const Duration(milliseconds: 300),
// height: 55,
// items:  [
// const Icon(
// Icons.home,
// size: 30,
// color: Colors.white,
// ),
// GestureDetector(
// onTap:arfunction,
// child: const Icon(
// Icons.linked_camera_outlined,
// size: 30,
// color: Colors.white,
// )),
// const Icon(
// Icons.favorite_outline_rounded,
// size: 30,
// color: Colors.white,
// ),
// const Icon(
// Icons.person,
// size: 30,
// color: Colors.white,
// ),
// ],
// ),