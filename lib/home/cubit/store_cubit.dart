import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/store_states.dart';

class StoreCubit extends Cubit<StoreStates> {
  StoreCubit() : super(StoreInitialState());
  static StoreCubit get(context) => BlocProvider.of(context);
}
