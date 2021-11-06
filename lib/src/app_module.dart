import 'package:flutter_aprendendo_modular/src/module/auth/auth_module.dart';
import 'package:flutter_aprendendo_modular/src/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'module/product/product_module.dart';

class AppModule extends Module {

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) =>SplashPage()),
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/product', module: ProductModule()),
  ];
  
}