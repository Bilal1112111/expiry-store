import 'package:flutter/material.dart';

import '../../constant.dart';
import '../authentication_components/default_button.dart';
import 'login_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});
  static String route = '/confirmation_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 15,
          ),
          child: Text(
            'Confirmation',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 40),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width / 2.5,
                  height: MediaQuery.sizeOf(context).height / 3,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE6F9F2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: primaryColor,
                    size: 100,
                  ),
                ),
                Text(
                  'Successful',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Your account password has been recovered successfully',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'please sign into your account to enjoy our services',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
                const SizedBox(
                  height: 30,
                ),
                DefaultButton(
                  label: 'Sign in',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoginScreen.route, (route) => false);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
