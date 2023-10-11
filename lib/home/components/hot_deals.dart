import 'package:flutter/material.dart';

import '../../constant.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        height: 170.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            'Hot Deals',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
          ),
        ),
      ),
    );
  }
}
