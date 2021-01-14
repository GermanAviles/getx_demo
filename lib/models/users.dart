import 'package:meta/meta.dart' show required;

class User {

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  User({
    @required this.id,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.avatar
  });

  static User fromJson( Map<String, dynamic> json ) {
    return User(
      id: json['id'],
      email: json['email'],
      avatar: json['avatar'],
      firstName: json['first_name'],
      lastName: json['last_name']
    );
  }
}