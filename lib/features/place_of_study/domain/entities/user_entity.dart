// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? address;
  final String? phone;
  final String? password;
  final int? role;
  const UserEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    this.phone,
    this.password,
    this.role,
  });

  @override
  List<Object?> get props {
    return [
      id,
      firstName,
      lastName,
      email,
      address,
      phone,
      password,
      role,
    ];
  }
}
