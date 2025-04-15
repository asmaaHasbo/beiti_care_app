import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../../../core/themes/styles.dart';

SearchInputDecoration buildSearchInputDecoration( { required String hint }) {
  return SearchInputDecoration(
    hintText: hint,
    hintStyle: AppStyles.textStyle14?.copyWith(
      color: const Color(0xffA7A5A5),
    ),
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 12,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xff8B8B8B),
        width: 0.6,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xff8B8B8B),
        width: 0.6,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xff8B8B8B),
        width: 0.6,
      ),
    ),
  );
}
