class User {
  late String name;
  late String age;
  late String email;
  late String password;

  String getName() {
    return name;
  }

  String getEmail() {
    return email;
  }

  String getPassword() {
    return password;
  }

  String getAge() {
    return age;
  }

  void setName(String name) {
    this.name = name;
  }

  void setPassword(String password) {
    this.password = password;
  }

  void setAge(String age) {
    this.age = age;
  }

  void setEmail(String email) {
    this.email = email;
  }

  bool validateLogin(String email, String password) {
    if (email == this.email && password == this.password) {
      return true;
    }
    return false;
  }

  User(String name, String password, String email, String age) {
    setName(name);
    setEmail(email);
    setPassword(password);
    setAge(age);
  }
}
