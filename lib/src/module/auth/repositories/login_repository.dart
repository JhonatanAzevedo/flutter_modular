class LoginRepository {
  Future<bool> login(String email, String password) async {
    if (email == 'jhon@gmail.com' && password == '123') {
      return true;
    } else {
      throw Exception('Erro no login');
    }
  }
}
