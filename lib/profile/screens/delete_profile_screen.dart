import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/authentication_components/auth_field.dart';
import 'package:uni_project/authentication/authentication_components/default_button.dart';
import 'package:uni_project/profile/cubit/delete_profile_cubit.dart';

import '../../authentication/screens/forget_password_screen.dart';
import '../../authentication/screens/login_screen.dart';
import '../states/delete_profile_states.dart';

class DeleteProfileScreen extends StatelessWidget {
  const DeleteProfileScreen({super.key});
  static String route = '/delete_profile_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteProfileCubit(),
      child: BlocBuilder<DeleteProfileCubit, DeleteProfileStates>(
        builder: (context, state) {
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
                  'Delete Account',
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
                        label: 'Write delete',
                        isEnabled: true,
                        prefixIcon: Icons.edit,
                        hintText: 'Write it with capital letters',
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      AuthField(
                        label: 'Current password',
                        isEnabled: true,
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.remove_red_eye,
                        hintText: 'write current password',
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
                        label: 'Delete',
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Delete Account',
                            desc:
                                'If you delete your account, all comments ,products and information will be permanently disappeared',
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
