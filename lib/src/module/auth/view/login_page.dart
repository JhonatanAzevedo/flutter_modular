import 'package:flutter/material.dart';
import 'package:flutter_aprendendo_modular/src/module/auth/blocs/events/login_event.dart';
import 'package:flutter_aprendendo_modular/src/module/auth/blocs/login_bloc.dart';
import 'package:flutter_aprendendo_modular/src/module/auth/blocs/states/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginBloc> {
  @override
  void initState() {
    super.initState();
    bloc.stream.listen((state) async {
      if (state is LoginSuccess) {
        await Future.delayed(Duration(milliseconds: 300));
        Modular.to.navigate('/product/girl');
      }
      if (state is LoginFailure) {
        final banner = MaterialBanner(
          content: Text('erro de login'),
          actions: [Icon((Icons.warning))],
        );
        ScaffoldMessenger.of(context).showMaterialBanner(banner);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is LoginLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is LoginSuccess) {
            return Center(
              child: Text('Bem vindo'),
            );
          }

          return Center(
            child: Column(
              children: [
                Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b3d92318-ada3-4ef8-9d9c-6bc960da1326/desiqop-b53dc4dd-d94d-4587-a1e4-b11a2501b1c0.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2IzZDkyMzE4LWFkYTMtNGVmOC05ZDljLTZiYzk2MGRhMTMyNlwvZGVzaXFvcC1iNTNkYzRkZC1kOTRkLTQ1ODctYTFlNC1iMTFhMjUwMWIxYzAuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ZYT3O1RRwCkBzY6i_AjjEWlbwOwQJfQZxl9hI1r9-1A',
                ),
                ElevatedButton(
                  onPressed: () {
                    bloc.add(
                      LoginWithEmail(password: '123', email: 'jhon@gmail.com'),
                    );
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
