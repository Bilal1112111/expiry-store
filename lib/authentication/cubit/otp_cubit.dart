import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/otp_states.dart';

class OtpCubit extends Cubit<OtpStates> {
  OtpCubit() : super(OtpInitialState());
  static OtpCubit get(context) => BlocProvider.of(context);
}
