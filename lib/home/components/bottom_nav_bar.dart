import 'package:flutter/material.dart';
import 'package:uni_project/constant.dart';

class MyBottomNavBar extends StatelessWidget {
  final dynamic cubit;
  const MyBottomNavBar({
    super.key,
    required this.cubit,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
        // bottomLeft: Radius.circular(35),
        // bottomRight: Radius.circular(35),
      ),
      child: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          mouseCursor: SystemMouseCursors.move,
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 25),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedIconTheme:
              const IconThemeData(color: Colors.white60, size: 20),
          items: cubit.appItems,
          onTap: (index) => cubit.changeCurrentScreenIndex(index),
          currentIndex: cubit.currentScreenIndex,
        ),
      ),
    );
  }
}
