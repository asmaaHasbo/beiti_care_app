// import 'package:flutter/material.dart';



// import 'package:flutter_typeahead/flutter_typeahead.dart';
//
// class QuickSearchScreen extends StatefulWidget {
//   const QuickSearchScreen({super.key});
//
//   @override
//   _QuickSearchScreenState createState() => _QuickSearchScreenState();
// }
//
// class _QuickSearchScreenState extends State<QuickSearchScreen> {
//   String? userSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body:  Padding(
//         padding: const EdgeInsets.only(right: 18.0, top: 8),
//         child: SizedBox(
//           height: 40,
//           width: double.infinity,
//           child: TypeAheadField(
//             noItemsFoundBuilder:
//                 (context) => const SizedBox(
//               height: 50,
//               child: Center(child: Text('No Item Found')),
//             ),
//             suggestionsBoxDecoration: const SuggestionsBoxDecoration(
//               color: Colors.white,
//               elevation: 4.0,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//             ),
//             debounceDuration: const Duration(milliseconds: 400),
//             textFieldConfiguration: TextFieldConfiguration(
//               decoration: InputDecoration(
//                 focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 enabledBorder: const OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                   borderSide: BorderSide(color: Colors.black),
//                 ),
//                 hintText: "Search",
//                 contentPadding: const EdgeInsets.only(top: 4, left: 10),
//                 hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
//                 suffixIcon: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.search, color: Colors.grey),
//                 ),
//                 fillColor: Colors.white,
//                 filled: true,
//               ),
//             ),
//             suggestionsCallback: (value) {
//               return StateService.getSuggestions(value);
//             },
//             itemBuilder: (context, String suggestion) {
//               return Row(
//                 children: [
//                   const SizedBox(width: 10),
//                   const SizedBox(width: 10),
//                   Flexible(
//                     child: Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Text(
//                         suggestion,
//                         maxLines: 1,
//                         // style: TextStyle(color: Colors.red),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//             onSuggestionSelected: (String suggestion) {
//               setState(() {
//                 userSelected = suggestion;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class StateService {
//   static final List<String> states = [
//     'ANDAMAN AND NICOBAR ISLANDS',
//     'ANDHRA PRADESH',
//     'ARUNACHAL PRADESH',
//     'ASSAM',
//     'BIHAR',
//     'CHATTISGARH',
//     'CHANDIGARH',
//     'DAMAN AND DIU',
//     'DELHI',
//     'DADRA AND NAGAR HAVELI',
//     'GOA',
//     'GUJARAT',
//     'HIMACHAL PRADESH',
//     'HARYANA',
//     'JAMMU AND KASHMIR',
//     'JHARKHAND',
//     'KERALA',
//     'KARNATAKA',
//     'LAKSHADWEEP',
//     'MEGHALAYA',
//     'MAHARASHTRA',
//     'MANIPUR',
//     'MADHYA PRADESH',
//     'MIZORAM',
//     'NAGALAND',
//     'ORISSA',
//     'PUNJAB',
//     'PONDICHERRY',
//     'RAJASTHAN',
//     'SIKKIM',
//     'TAMIL NADU',
//     'TRIPURA',
//     'UTTARAKHAND',
//     'UTTAR PRADESH',
//     'WEST BENGAL',
//     'TELANGANA',
//     'LADAKH',
//   ];
//
//   static List<String> getSuggestions(String query) {
//     List<String> matches = [];
//     matches.addAll(states);
//     matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
//     return matches;
//   }
// }
