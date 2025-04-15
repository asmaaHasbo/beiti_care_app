import 'package:flutter/cupertino.dart';

class DoctorImg extends StatelessWidget {
  const DoctorImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Image.network(
        'https://s3-alpha-sig.figma.com/img/3f05/4eb1/6d33d9a8bd5e4c544a8aa50dfbf6a07f?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AdoctdiGV6D5TijOP0EjTFPlD7YjrYnR7qxf~QVojZzfcqzLaN1n6uHbttWDHZ15QBiFXumkQa5JEt-jinUsZimbn6iHHbGvjKb6eactGgyAV5NQ2GW2qh15egNgP822VSJ5tKAwd6VCw3AHBLHNK-R~Rub~giE8oX5T7wmdvUochyOI1IlQ-R9F~CcBl8N2IWnvCg9gaSwI-GIc-9NEz-CWjyJu-GqxQqVdd2Q1ovHYVjOBqtSqzr3dQ8lJ6lHzTsMt899zpq1E0JlHQAPZ0ITC8l8~waBuq10QXpGvXKNllJd5u4KAfRFsLPzAD4gw4AGAyCJTxTj~MFo1~GMUEA__',
        width: 48,
        height: 48,
        fit: BoxFit.cover,
      ),
    );
  }
}
