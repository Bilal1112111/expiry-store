import 'package:flutter/material.dart';

import '../../constant.dart';
import 'customized_rating_bar.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.sizeOf(context).width * 0.519,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFFE6F9F2),
        gradient: const LinearGradient(
          colors: [
            Color(0XFFE6F9F2),
            Color(0XFFE6F9F2),
            Color(0XFFE6F9F2),
            Color(0XFFE6F9F2),
            Color(0XFFE6F9F2),
            Color(0XFFE6F9F2),
            primaryColor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Omar Fostok',
                  style: TextStyle(fontSize: 14),
                ),
                const Text(
                  '@N0b0dy',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    CustomizedRatingBar(itemSize: 12.0),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'verified user',
                      style: TextStyle(fontSize: 12, color: Color(0XFFFF891D)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'This is very bad product',
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ],
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_rounded,
                    size: 40,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
