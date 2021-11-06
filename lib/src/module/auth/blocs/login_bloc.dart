import 'package:flutter_aprendendo_modular/src/module/auth/blocs/states/login_state.dart';
import 'package:flutter_aprendendo_modular/src/module/auth/repositories/login_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'events/login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(LoginIdle()) {
    on<LoginWithEmail>(loginEmail);
  }

  Future loginEmail(LoginWithEmail event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    await Future.delayed(Duration(seconds: 1));
    try {
      await loginRepository.login(event.email, event.password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure('Erro senha ou email'));
    }
  }
}
