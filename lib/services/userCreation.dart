//I'll return user to the calling class.
class MyUser {
  final String? uid;
  MyUser(this.uid);

  factory MyUser.initialData() {
    return MyUser(null);
  }
}
