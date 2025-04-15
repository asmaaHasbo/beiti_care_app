import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

SuggestionDecoration buildSuggestionListDecoration() {
  return SuggestionDecoration(
    selectionColor: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: const Color(0xff8B8B8B), width: .6),
  );
}
