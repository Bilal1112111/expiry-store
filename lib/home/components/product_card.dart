import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.445,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor.withOpacity(0.160),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icons/bilal.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Shampoo',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '15/8/2024',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Container(
                              width:
                                  (MediaQuery.sizeOf(context).width * 0.445) /
                                      2.3,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                              child: Center(
                                child: Text(
                                  '50\$',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
