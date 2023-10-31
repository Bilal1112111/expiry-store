import 'package:flutter/material.dart';

import '../../constant.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor,
      ),
      child: Text(
        'Meat',
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
