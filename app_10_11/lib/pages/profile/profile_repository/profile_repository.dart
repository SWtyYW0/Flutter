import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_7/pages/profile/bloc/profile_bloc.dart';
import 'package:practice_7/pages/profile/service/api_service.dart';

class ProfileRepository {
  final apiService = ApiService(Dio(BaseOptions(contentType: 'application/json')));
  
  Future<void> getPostsData(ProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
      final posts = await apiService.getPosts();
      print('posts $posts');
      emit(ProfileSuccess(posts));
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }
 }