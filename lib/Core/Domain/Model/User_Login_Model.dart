// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:my_reservations/Core/Domain/Model/Base_model.dart';

class UserLoginModel extends BaseModel {
  String username;
  String password;
  UserLoginModel({
    required this.username,
    required this.password,
  });


  UserLoginModel copyWith({
    String? username,
    String? password,
  }) {
    return UserLoginModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory UserLoginModel.fromMap(Map<String, dynamic> map) {
    return UserLoginModel(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserLoginModel.fromJson(String source) => UserLoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserLoginModel(username: $username, password: $password)';

  @override
  bool operator ==(covariant UserLoginModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}
