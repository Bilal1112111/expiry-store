import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/home/cubit/home_cubit.dart';
import 'package:uni_project/home/states/home_states.dart';

import '../../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String route = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          var homeCubit = HomeCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Home',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.telegramPlane,
                    size: 20.0,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: Theme.of(context).textTheme.displayMedium,
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                color: primaryColor,
                                size: 22,
                              ),
                              suffixIcon: IconButton(
                                highlightColor: Colors.transparent,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.filter_list,
                                  size: 22,
                                  color: primaryColor,
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(5),
                              hintText: 'Search',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: const Color(0XFFE6F9F2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      child: Container(
                        height: 220.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Hot Deals',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
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
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    color: const Color(0XFFE6F9F2),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 15.0),
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
                                        SizedBox(
                                          height: 9.0,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: IconButton(
                                            padding: EdgeInsets.all(0.0),
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
                    ),
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
