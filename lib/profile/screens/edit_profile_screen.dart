import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/authentication_components/auth_field.dart';
import 'package:uni_project/authentication/authentication_components/default_button.dart';

import '../../authentication/screens/forget_password_screen.dart';
import '../../authentication/screens/login_screen.dart';
import '../cubit/edit_profile_cubit.dart';
import '../states/edit_profile_states.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  static String route = '/edit_profile';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(),
      child: BlocBuilder<EditProfileCubit, EditProfileStates>(
        builder: (context, state) {
          var editProfile = EditProfileCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  'Edit Profile',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 40.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthField(
                        label: 'Name',
                        isEnabled: true,
                        prefixIcon: Icons.person,
                        hintText: 'Bilal Al Refaie',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      AuthField(
                        label: 'Email',
                        isEnabled: true,
                        prefixIcon: Icons.email_outlined,
                        hintText: 'Bilal.alrefaie02@gmail.com',
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Center(
                        child: Text(
                          'If you change the email you have to verify again',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: Colors.grey,
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      AuthField(
                        label: 'Password',
                        isEnabled: true,
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.remove_red_eye,
                        hintText: 'Password801',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, ForgetPasswordScreen.route);
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                              const Color(0XFFFF891D).withAlpha(30),
                            ),
                          ),
                          child: Text(
                            'Forget Password?',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: const Color(0XFFFF891D),
                                ),
                          ),
                        ),
                      ),
                      DefaultButton(
                        label: 'Apply Changes',
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Apply Changes',
                            desc: 'Are you sure to edit your information',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                            },
                          ).show();
                        },
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
