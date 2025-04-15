import 'package:flutter/material.dart';

navigationFunction({required context, required Widget screen}) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen ),
  );

}
