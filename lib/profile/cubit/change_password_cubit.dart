import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/profile/states/change_password_states.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordStates> {
  ChangePasswordCubit() : super(ChangePasswordInitialState());
  static ChangePasswordCubit get(context) => BlocProvider.of(context);
}
