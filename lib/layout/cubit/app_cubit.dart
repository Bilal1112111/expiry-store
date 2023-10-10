import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/layout/states/app_states.dart';

import '../../home/screens/home_screen.dart';
import '../../home/screens/store_screen.dart';
import '../../profile/screens/profile_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<BottomNavigationBarItem>? bottomNavBarItemList;
  Widget? body;

  List<Widget> appScreens = [
    HomeScreen(),
    StoreScreen(),
    ProfileScreen(),
  ];

  List<BottomNavigationBarItem> appItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_grocery_store_outlined),
      label: 'Store',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: 'Profile',
    ),
  ];
  int currentScreenIndex = 0;

  changeCurrentScreenIndex(int index) {
    currentScreenIndex = index;
    changeScreen();
    emit(ChangeScreenIndexState());
  }

  changeScreen() {
    body = appScreens[currentScreenIndex];
    bottomNavBarItemList = appItems;
  }
}
