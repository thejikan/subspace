enum LoginMethod {
  email("1"),
  facebook("2"),
  apple("3"),
  google("4"),
  phone("5");

  const LoginMethod(this.value);
  final String? value;

  factory LoginMethod.fromStringStatus(String? method){
    switch(method){
      case '1':
        return LoginMethod.email;
      case '2':
        return LoginMethod.facebook;
      case '3':
        return LoginMethod.apple;
      case '4':
        return LoginMethod.google;
      case '5':
        return LoginMethod.phone;
      default:
        return LoginMethod.email;
    }
  }
}
