/// Authentication on local
class AuthService {
  // Singleton setup
  static final AuthService instance = AuthService._internal();

  factory AuthService() => instance;

  AuthService._internal();

  // Simulated login state
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  // Async version (e.g., from SharedPreferences or secure storage)
  Future<bool> isLoggedInAsync() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _isLoggedIn;
  }

  // Simulated login
  Future<void> login(String username, String password) async {
    // Replace with real logic (API, token check, etc.)
    if (username == 'admin' && password == '1234') {
      _isLoggedIn = true;
    }
  }

  // Simulated logout
  Future<void> logout() async {
    _isLoggedIn = false;
  }
}
