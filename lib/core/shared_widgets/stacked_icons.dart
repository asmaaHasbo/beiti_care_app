import 'package:flutter/cupertino.dart';

class StackedIcons extends StatelessWidget {
  const StackedIcons({super.key,
  required this.iconOneName,
  required this.iconTwoName,
  required this.iconOneSize,
  required this.iconsColor,
  });
  final IconData iconOneName ;
  final IconData iconTwoName ;
  final double iconOneSize ;
  final Color iconsColor ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(
            iconOneName,
            size: iconOneSize,
            color: iconsColor,
          ),
          Positioned(
            bottom: 0,
            right: -4,
            child: Icon(
             iconTwoName,
              size: 14,
              color: iconsColor,
            ),
          )
        ],
      ),
    );
  }
}
