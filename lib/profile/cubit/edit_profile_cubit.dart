import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/profile/states/edit_profile_states.dart';

class EditProfileCubit extends Cubit<EditProfileStates> {
  EditProfileCubit() : super(EditProfileInitialState());
  static EditProfileCubit get(context) => BlocProvider.of(context);
}
