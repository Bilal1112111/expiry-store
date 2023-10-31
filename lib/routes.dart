import 'package:uni_project/home/screens/comments_screen.dart';
import 'package:uni_project/home/screens/product_screen.dart';
import 'package:uni_project/profile/screens/change_password_screen.dart';
import 'package:uni_project/profile/screens/delete_profile_screen.dart';
import 'package:uni_project/profile/screens/profile_screen.dart';

import 'authentication/screens/confirmation_screen.dart';
import 'authentication/screens/forget_password_screen.dart';
import 'authentication/screens/login_screen.dart';
import 'authentication/screens/new_password_screen.dart';
import 'authentication/screens/otp_verfication_screen.dart';
import 'authentication/screens/register_screen.dart';
import 'home/screens/home_screen.dart';
import 'home/screens/store_screen.dart';
import 'layout/layout.dart';
import 'profile/screens/edit_profile_screen.dart';

var routes = {
  LoginScreen.route: (context) => const LoginScreen(),
  RegisterScreen.route: (context) => const RegisterScreen(),
  NewPasswordScreen.route: (context) => const NewPasswordScreen(),
  ForgetPasswordScreen.route: (context) => const ForgetPasswordScreen(),
  OtpVerificationScreen.route: (context) => const OtpVerificationScreen(),
  ConfirmationScreen.route: (context) => const ConfirmationScreen(),
  ProfileScreen.route: (context) => const ProfileScreen(),
  EditProfileScreen.route: (context) => const EditProfileScreen(),
  ChangePasswordScreen.route: (context) => const ChangePasswordScreen(),
  DeleteProfileScreen.route: (context) => const DeleteProfileScreen(),
  CommentsScreen.route: (context) => const CommentsScreen(),
  StoreScreen.route: (context) => const StoreScreen(),
  HomeScreen.route: (context) => const HomeScreen(),
  Layout.route: (context) => const Layout(),
  ProductScreen.route: (context) => const ProductScreen(),
};
