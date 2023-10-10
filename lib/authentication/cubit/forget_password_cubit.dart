import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/states/forget_password_states.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordStates> {
  ForgetPasswordCubit() : super(ForgetPasswordInitialState());
  static ForgetPasswordCubit get(context) => BlocProvider.of(context);
}
