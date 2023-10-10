import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/profile/cubit/change_password_cubit.dart';
import 'package:uni_project/profile/states/change_password_states.dart';

import '../../authentication/authentication_components/auth_field.dart';
import '../../authentication/authentication_components/default_button.dart';
import '../../authentication/screens/login_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static String route = '/change_password_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: BlocBuilder<ChangePasswordCubit, ChangePasswordStates>(
        builder: (context, state) {
          var changePasswordCubit = ChangePasswordCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10,
                ),
                child: Text(
                  'Change Password',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Follow tips',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'to change password',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AuthField(
                        label: 'Current ',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        hintText: 'current password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        label: 'New',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        hintText: 'new password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        label: 'Confirm',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        hintText: 'confirm password',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DefaultButton(
                          label: 'Submit',
                          onPressed: () {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.info,
                              animType: AnimType.rightSlide,
                              title: 'Apply Changes',
                              desc: 'Are you sure to change your password',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ));
                              },
                            ).show();
                          })
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
