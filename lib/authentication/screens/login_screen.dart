import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/screens/register_screen.dart';

import '../../constant.dart';
import '../authentication_components/auth_field.dart';
import '../authentication_components/default_button.dart';
import '../authentication_components/login_with_google.dart';
import '../cubit/login_cubit.dart';
import '../states/login_states.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String route = '/login_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (context, state) {
          var loginCubit = LoginCubit.get(context);
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
                        'Welcome!',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        'Login to your account.',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AuthField(
                        hintText: 'email or username',
                        label: 'Email',
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Checkbox(
                                    shape: const CircleBorder(),
                                    fillColor: const MaterialStatePropertyAll(
                                        primaryColor),
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                Text(
                                  'Remember Password',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                            TextButton(
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      DefaultButton(
                        label: 'Log In',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const WithGoogle(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have any account ?',
                            style: Theme.of(context).textTheme.displaySmall!,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RegisterScreen.route);
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  primaryColor.withAlpha(20)),
                            ),
                            child: Text(
                              'Sign Up',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(color: primaryColor),
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
