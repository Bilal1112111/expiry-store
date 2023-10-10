import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/components/bottom_nav_bar.dart';
import 'cubit/app_cubit.dart';
import 'states/app_states.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});
  static String route = '/layout';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          bottomNavigationBar: MyBottomNavBar(
            cubit: cubit,
          ),
          body: cubit.body,
        );
      },
      listener: (context, state) {},
    );
  }
}
