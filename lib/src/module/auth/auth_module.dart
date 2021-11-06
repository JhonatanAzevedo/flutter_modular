import 'package:flutter_aprendendo_modular/src/module/auth/repositories/login_repository.dart';
import 'package:flutter_aprendendo_modular/src/module/auth/view/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'blocs/login_bloc.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) =>  LoginRepository()),
    Bind.singleton((i) => LoginBloc(i()))
  ];
  
  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => LoginPage()),
    
  ];
}