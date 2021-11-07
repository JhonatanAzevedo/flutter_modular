import 'package:flutter/cupertino.dart';
import 'package:flutter_aprendendo_modular/app/app_module.dart';
import 'package:flutter_aprendendo_modular/app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
