import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/home/states/comments_states.dart';

class CommentsCubit extends Cubit<CommentsStates> {
  CommentsCubit() : super(CommentsInitialState());
  static CommentsCubit get(context) => BlocProvider.of(context);
}
