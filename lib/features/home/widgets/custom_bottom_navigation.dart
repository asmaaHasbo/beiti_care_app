import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigation extends StatelessWidget {
   CustomBottomNavigation({super.key, required this.currentIndex, required this.onTap});

  final   int currentIndex ;
  final Function(int) onTap ;

  final items = <Widget>[
    const Icon(Icons.home, size: 30 , color: Color(0xff8B8B8B)),
    const Icon(Icons.list_alt_rounded, size: 30,color: Color(0xff8B8B8B) ),
    const Icon(Icons.person, size: 30 ,color: Color(0xff8B8B8B) ),
    Image.asset("assets/images/request_bottom_icon.png", width: 30, height: 30),
    const Icon(Icons.menu, size: 30, color: Color(0xff8B8B8B)),
  ];

  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      SizedBox(
        width: double.infinity,
        height: 86,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: CurvedNavigationBar(
            index: currentIndex,
            height: 75,
            items: items,
            color: const Color(0xffD9D9D9),
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: const Color(0xffD9D9D9),
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            onTap: onTap ,
          ),
        ),
      ),

      const Padding(
        padding: EdgeInsets.only(top: 60, left: 20, right: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home', style: TextStyle(fontSize: 12)),
            Text('Services', style: TextStyle(fontSize: 12)),
            Text('Profile', style: TextStyle(fontSize: 12)),
            Text('Requests', style: TextStyle(fontSize: 12)),
            Text('Menu', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: Image.asset("assets/images/service_listhen_icon.png", width: 30, height: 30),
      ),
    ],
  );
  }
}
