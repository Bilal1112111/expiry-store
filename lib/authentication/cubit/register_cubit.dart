import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/authentication/states/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
}
