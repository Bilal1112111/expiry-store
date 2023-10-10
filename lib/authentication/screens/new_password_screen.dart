import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/cubit/new_password_cubit.dart';
import 'package:uni_project/authentication/states/new_password_states.dart';

import '../authentication_components/auth_field.dart';
import '../authentication_components/default_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});
  static String route = '/new_password_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPasswordCubit(),
      child: BlocBuilder<NewPasswordCubit, NewPasswordStates>(
        builder: (context, state) {
          var newPasswordCubit = NewPasswordCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 15,
                ),
                child: Text(
                  'Rest Password',
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
                        'Please',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Add new password',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AuthField(
                        label: 'New password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        hintText: 'new password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        label: 'Confirm password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        hintText: 'confirm password',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DefaultButton(label: 'Confirm', onPressed: () {})
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
