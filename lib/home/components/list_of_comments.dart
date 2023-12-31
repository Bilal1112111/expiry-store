import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constant.dart';
import 'expandable_text.dart';

class ListOfComments extends StatelessWidget {
  const ListOfComments({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Bilal Al Refaie',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: primaryColor,
                        ),
                  ),
                  Text(
                    '@bilal.alrefaie02',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15.0,
                        glowColor: Colors.amber,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Verified user',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: Colors.amber, fontSize: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'This product is very good..',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  ExpandableText(
                      'Hello i bought this product from apple store and it was amazing and affordable, and it was perfect, soft, and have a nice treatment and good,'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
