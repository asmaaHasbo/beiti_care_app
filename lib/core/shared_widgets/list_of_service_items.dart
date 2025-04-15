import 'package:flutter/cupertino.dart';

import 'package:smart_project_test/features/services/widget/service_item.dart';

class ListOfServiceItems extends StatelessWidget {
  const ListOfServiceItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder:(context, index) => const ServiceItem(),
      ),
    );
  }
}
