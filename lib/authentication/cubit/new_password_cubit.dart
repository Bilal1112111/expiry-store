import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/new_password_states.dart';

class NewPasswordCubit extends Cubit<NewPasswordStates> {
  NewPasswordCubit() : super(NewPasswordInitialState());
  static NewPasswordCubit get(context) => BlocProvider.of(context);
}
