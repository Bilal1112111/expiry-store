import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/profile/states/delete_profile_states.dart';

class DeleteProfileCubit extends Cubit<DeleteProfileStates> {
  DeleteProfileCubit() : super(DeleteProfileInitialState());
  static DeleteProfileCubit get(context) => BlocProvider.of(context);
}
