import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice_7/pages/profile/profile_model/profile_model.dart';
import 'package:practice_7/pages/profile/profile_repository/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
    final ProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(ProfileLoading()) {
    on<LoadPostsEvent>(_profileRepository.getPostsData);
  }
}
