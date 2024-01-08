import 'package:flix_id_riverpod/data/repositories/authentication.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/usecases/usecase.dart';

class Logout implements UseCase<Result, void> {
  final Authentication _authentication;

  Logout({required Authentication authentication})
      : _authentication = authentication;
  @override
  Future<Result> call(void params) async {
    return _authentication.logout();
  }
}
