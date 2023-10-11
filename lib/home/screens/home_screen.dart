import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/home/components/search_bar.dart';
import 'package:uni_project/home/cubit/home_cubit.dart';
import 'package:uni_project/home/states/home_states.dart';

import '../../constant.dart';
import '../components/category_item.dart';
import '../components/hot_deals.dart';

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
                    const Row(
                      children: [
                        Expanded(
                          child: CustomizedSearchBar(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const HotDeals(),
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
                    CategoryItem(),
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
