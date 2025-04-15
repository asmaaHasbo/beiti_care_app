import 'package:flutter/material.dart';

class ListOfStarIcons extends StatelessWidget {
  const ListOfStarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 50,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder:
              (BuildContext context, int index) =>
                  const Icon(Icons.star, color: Color(0xffED7800), size: 10),
        ),
      ),
    );
  }
}
