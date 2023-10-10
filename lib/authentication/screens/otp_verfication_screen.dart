import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/cubit/otp_cubit.dart';
import 'package:uni_project/authentication/states/otp_states.dart';

import '../../constant.dart';
import '../authentication_components/default_button.dart';
import '../authentication_components/otp.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});
  static String route = '/otp_verification_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: BlocBuilder<OtpCubit, OtpStates>(
        builder: (context, state) {
          var otpCubit = OtpCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  'Verify your email',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OTP Verification',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Please input your OTP',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const OTP(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'didn\'t received the code ?',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                  primaryColor.withAlpha(30),
                                ),
                              ),
                              child: const Text(
                                'Resend code',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DefaultButton(
                        label: 'Verify Now',
                        onPressed: () {},
                        width: MediaQuery.sizeOf(context).width / 1.2,
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
