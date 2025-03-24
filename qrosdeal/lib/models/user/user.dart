class User {
  final String email;
  final String fullName;
  final String userRef;
  final String? lastLogin;

  User(
      {required this.email,
      required this.fullName,
      required this.userRef,
      required this.lastLogin});
}
