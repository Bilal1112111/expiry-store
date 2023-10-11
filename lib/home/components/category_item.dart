import 'package:flutter/material.dart';

import '../../constant.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 14,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  child: Container(
                    height: 90.0,
                    width: MediaQuery.of(context).size.width * 0.15,
                    color: primaryColor,
                    child: const Center(
                      child: Icon(
                        Icons.fastfood_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    height: 90.0,
                    width: MediaQuery.of(context).size.width * 0.25,
                    color: const Color(0XFFE6F9F2),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Fast Food',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: primaryColor,
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 9.0,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            padding: const EdgeInsets.all(0.0),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_rounded,
                              color: primaryColor,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
