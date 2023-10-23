import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:practice_7/auth/login/bloc/login_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final LoginBloc loginBloc;
  RegisterBloc(this.loginBloc) : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      if (event is RegisterButtonPressed) {
        emit(RegisterLoading());
        try {
          await Future.delayed(const Duration(seconds: 1), () async {
            final data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: event.email.trim(), 
              password: event.password.trim(),
            );
            print('----------------------------------------');
            print(data);
            print('----------------------------------------');
            emit(RegisterSuccess());
            loginBloc.add(LoginAfterRegister());
          });
        } catch (e) {
          emit(RegisterError(e.toString()));
        }
      }
    });
  }
}
