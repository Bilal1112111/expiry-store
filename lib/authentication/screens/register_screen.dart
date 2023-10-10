import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/cubit/register_cubit.dart';
import 'package:uni_project/authentication/screens/login_screen.dart';
import 'package:uni_project/authentication/states/register_states.dart';

import '../../constant.dart';
import '../authentication_components/auth_field.dart';
import '../authentication_components/default_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static String route = '/register_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterStates>(
        builder: (context, state) {
          var registerCubit = RegisterCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 15,
                ),
                child: Text(
                  'Expiry Store',
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
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign up',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        'To browse endless',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        'products',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AuthField(
                        hintText: 'enter your username',
                        label: 'Username',
                        prefixIcon: Icons.person_outline,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        hintText: 'enter your name',
                        label: 'Name',
                        prefixIcon: Icons.person_outline,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        isPassword: true,
                        label: 'Email',
                        hintText: 'enter your email',
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        isPassword: true,
                        label: 'Password',
                        hintText: 'enter your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthField(
                        isPassword: true,
                        label: 'Confirm Password',
                        hintText: 'confirm your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                        label: 'Sign Up',
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account ?',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.route);
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  primaryColor.withAlpha(20)),
                            ),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 12,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
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
