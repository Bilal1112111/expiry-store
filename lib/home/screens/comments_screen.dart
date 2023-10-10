import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:uni_project/home/cubit/comments_cubit.dart';
import 'package:uni_project/home/states/comments_states.dart';

import '../components/list_of_comments.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});
  static String route = '/comments_screen';
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => CommentsCubit(),
      child: BlocBuilder<CommentsCubit, CommentsStates>(
        builder: (context, state) {
          var commentsCubit = CommentsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leadingWidth: screenWidth,
              leading: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/icons/bilal.jpg'),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Al-Refaie Store',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Rate: 4.8',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                color: Colors.white,
                              ),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20.0,
                          glowColor: Colors.amber,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              toolbarHeight: screenHeight / 6.2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0),
                ),
              ),
            ),
            body: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 30.0,
                ),
                child: Column(
                  children: [
                    ListOfComments(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
