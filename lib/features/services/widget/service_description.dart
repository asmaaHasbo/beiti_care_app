import 'package:flutter/cupertino.dart';
import 'package:smart_project_test/core/themes/styles.dart';

class ServiceDescription extends StatelessWidget {
  const ServiceDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Specialized nutrition services and comprehensive nutritional assessment',
      style:AppStyles.textStyle12
    );
  }
}
