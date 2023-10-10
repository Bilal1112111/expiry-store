import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_project/authentication/authentication_components/auth_field.dart';
import 'package:uni_project/authentication/authentication_components/default_button.dart';
import 'package:uni_project/constant.dart';
import 'package:uni_project/profile/screens/edit_profile_screen.dart';

import 'change_password_screen.dart';
import 'delete_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String route = '/profile_screen';
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white.withAlpha(1),
        ),
        backgroundColor: primaryColor,
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
            SizedBox(
              width: screenWidth / 5,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage('assets/icons/bilal.jpg'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Bilal Al Refaie',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
                Text(
                  '@bilal_alrefaie',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: screenHeight / 3.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35.0),
            bottomRight: Radius.circular(35.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 14.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthField(
                  label: 'Email',
                  hintText: 'Bilal.Alrefaie02@gmail.com',
                  prefixIcon: Icons.email_outlined,
                  isEnabled: false,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                DefaultButton(
                  label: 'Edit Profile',
                  onPressed: () {
                    Navigator.pushNamed(context, EditProfileScreen.route);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DefaultButton(
                  label: 'Change Password',
                  onPressed: () {
                    Navigator.pushNamed(context, ChangePasswordScreen.route);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  height: buttonHeight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, DeleteProfileScreen.route);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.red.withAlpha(220),
                      ),
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      'Delete Account',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
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
  }
}
