import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:uni_project/home/states/store_states.dart';

import '../../constant.dart';
import '../cubit/store_cubit.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  static String route = '/store_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCubit(),
      child: BlocBuilder<StoreCubit, StoreStates>(
        builder: (context, state) {
          var storeCubit = StoreCubit.get(context);
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 200),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: primaryColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: AppBar().preferredSize.height - 25),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/icons/bilal.jpg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Expiry Store',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.messenger_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              // width: MediaQuery.sizeOf(context).width * 0.35,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0XFFE6F9F2),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.8',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    itemSize: 12,
                                    direction: Axis.horizontal,
                                    glowColor: primaryColor,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.only(
                                        left: 4, right: 4),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.018,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              itemSize: 10,
                                              glowColor: primaryColor,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              'verified user',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color:
                                                      const Color(0XFFFF891D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'This is very bad product',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
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
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 54,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(primaryColor),
                            shape: MaterialStatePropertyAll<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Products',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0, color: Colors.transparent),
                                    color: const Color(0XFFE6F9F2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 5),
                                  height: 35,
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: 'test1',
                                      items: [
                                        DropdownMenuItem(
                                          value: 'test1',
                                          child: Text(
                                            'All',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium,
                                          ),
                                        ),
                                        const DropdownMenuItem(
                                          value: 'test2',
                                          child: Text('item2'),
                                        ),
                                        const DropdownMenuItem(
                                          value: 'test3',
                                          child: Text('item3'),
                                        ),
                                        const DropdownMenuItem(
                                          value: 'test4',
                                          child: Text('item4'),
                                        ),
                                        const DropdownMenuItem(
                                          value: 'test5',
                                          child: Text('item5'),
                                        ),
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ImageIcon extends StatelessWidget {
  const ImageIcon({
    super.key,
    required this.path,
  });
  final String path;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
      },
      child: SizedBox(
        height: 26,
        child: Image.asset(
          path,
          color: Colors.white,
        ),
      ),
    );
  }
}
