import 'package:flutter/material.dart';
import 'package:smart_project_test/core/themes/colors.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class CustomSearchDropDown extends StatefulWidget {
  const CustomSearchDropDown({
    super.key,
    required this.searchFieldName,
    required this.hint,
  });

  final String searchFieldName;
  final String hint;

  @override
  State<CustomSearchDropDown> createState() => _CustomSearchDropDownState();
}

class _CustomSearchDropDownState extends State<CustomSearchDropDown> {
  final TextEditingController controller = TextEditingController();

  //------------------ العناصر المتاحه ------------------
  final List<String> allServices = [
    'Nutrition',
    'Catheterization',
    'Consultations',
    'Catheterization',
    'Consultations',
    'Catheterization',
    'Consultations',
  ];

  List<String> filteredList = [];

  //-----------  داله بتاعت ال  on chanage بتاعت ال text form
  bool showSuggestions = false;

  void onChange(String query) {
    //------------- لو مفيش input فضي ال filterd list
    if (query.isEmpty) {
      setState(() {
        filteredList = [];
      });
      return;
    }

    //---------------------- لو الحرف اللي في السرش موجوده في اي كلمه من الكلمات اللي في الليست حط بقي الكلمات دي في ليست جديده
    final suggestions =
        allServices
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

    //------------ اعمل update لل filterdlist عللي حسب ال suggestion list لو فاضيه
    setState(() {
      filteredList = suggestions.isEmpty ? ['Not found'] : suggestions;
      showSuggestions = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //------------------ Label ----------------
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.searchFieldName,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff5E5C5C),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // ----------------- text Field -------------
        TextField(
          controller: controller,
          onChanged: onChange,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            fillColor: Colors.white,
            hintStyle: AppStyles.textStyle14?.copyWith(
              color: const Color(0xffA7A5A5),
            ),
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
          ),
        ),

        //----------------- Suggestions List---------------
        //  ------- لو بدا يبحث اظهر ال ال container دا اللي اصلا جواه list vie بالعناصر الموجوده
        if (showSuggestions)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              border: Border.all(color: const Color(0xff8B8B8B)),
            ),
            //-----------------------  list view -------------
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final currentItem = filteredList[index];
                final isFirst = index == 0;
                final isNotFound = currentItem == 'Not found';

                return GestureDetector(
                  onTap: () {
                    if (!isNotFound) {
                      // ✨ حط العنصر في الـ input
                      controller.text = currentItem;

                      // ✨ اخفي الليست بعد الاختيار
                      setState(() {
                        filteredList = [];
                      });
                      // ✨ شيل المؤشر (الكيبورد يقفل كمان)
                      FocusScope.of(context).unfocus();

                      showSuggestions = false;
                    }
                  },
                  child: Padding(
                    padding:
                        isFirst
                            ? const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            )
                            : EdgeInsets.zero,
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            isNotFound
                                ? Colors.white
                                : isFirst
                                ? AppColors.secondaryColor
                                : Colors.white,
                        borderRadius:
                            isNotFound
                                ? BorderRadius.zero
                                : isFirst
                                ? BorderRadius.circular(8)
                                : BorderRadius.zero,
                      ),
                      padding:
                          isFirst
                              ? const EdgeInsets.all(12)
                              : const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 5,
                              ),
                      child: Text(
                        currentItem,
                        style: TextStyle(
                          color:
                              isNotFound
                                  ? Colors.red
                                  : isFirst
                                  ? Colors.white
                                  : Colors.black,
                          fontSize: isNotFound ? 18 : 14,
                        ),
                        textAlign:
                            isNotFound ? TextAlign.center : TextAlign.start,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
