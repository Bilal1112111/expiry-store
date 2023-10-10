import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/cubit/forget_password_cubit.dart';
import 'package:uni_project/authentication/states/forget_password_states.dart';

import '../authentication_components/auth_field.dart';
import '../authentication_components/default_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  static String route = '/forget_password_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordStates>(
        builder: (context, state) {
          var forgetPasswordCubit = ForgetPasswordCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 15,
                ),
                child: Text(
                  'Forget Password',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 14),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'We will send a mail to the email address you registered to regain your password.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AuthField(
                        label: 'Enter your email',
                        prefixIcon: Icons.email_outlined,
                        hintText: 'Email address',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DefaultButton(
                        label: 'Send Code',
                        onPressed: () {},
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
