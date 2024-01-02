import 'dart:io';

import 'package:flix_id_riverpod/data/repositories/user_repository.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/entities/user.dart';

class DummyUserRepository implements UserRepository {
  @override
  Future<Result<User>> createUser(
      {required String uid,
      required String email,
      required String name,
      String? photoUrl,
      int balance = 0}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> getUser({required String uid}) async {
    await Future.delayed(Duration(seconds: 1));
    return Result.success(
        User(uid: uid, email: 'zeroTest@gmail.com', name: 'ZeroTest'));
  }

  @override
  Future<Result<int>> getUserBalance({required String uid}) {
    // TODO: implement getUserBalance
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> updateUser({required User user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> updateUserBalance(
      {required String uid, required int balance}) {
    // TODO: implement updateUserBalance
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> updateUserProfilePicture(
      {required User user, required File imageFile}) {
    // TODO: implement updateUserProfilePicture
    throw UnimplementedError();
  }
}