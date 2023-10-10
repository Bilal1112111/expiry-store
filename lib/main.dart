import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/cubit/forget_password_cubit.dart';
import 'package:uni_project/authentication/cubit/login_cubit.dart';
import 'package:uni_project/authentication/cubit/new_password_cubit.dart';
import 'package:uni_project/authentication/cubit/otp_cubit.dart';
import 'package:uni_project/home/cubit/comments_cubit.dart';
import 'package:uni_project/layout/states/app_states.dart';
import 'package:uni_project/profile/cubit/change_password_cubit.dart';
import 'package:uni_project/profile/cubit/delete_profile_cubit.dart';
import 'package:uni_project/profile/cubit/edit_profile_cubit.dart';
import 'package:uni_project/routes.dart';

import 'authentication/cubit/register_cubit.dart';
import 'constant.dart';
import 'home/cubit/home_cubit.dart';
import 'home/cubit/store_cubit.dart';
import 'layout/cubit/app_cubit.dart';
import 'layout/layout.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white.withAlpha(1), // Set the status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static String route = '/main';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => NewPasswordCubit()),
        BlocProvider(create: (context) => ForgetPasswordCubit()),
        BlocProvider(create: (context) => OtpCubit()),
        BlocProvider(create: (context) => CommentsCubit()),
        BlocProvider(create: (context) => ChangePasswordCubit()),
        BlocProvider(create: (context) => DeleteProfileCubit()),
        BlocProvider(create: (context) => EditProfileCubit()),
        BlocProvider(create: (context) => StoreCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            theme: appTheme,
            routes: routes,
            initialRoute: Layout.route,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
