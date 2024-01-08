import 'package:flix_id_riverpod/data/repositories/authentication.dart';
import 'package:flix_id_riverpod/data/repositories/user_repository.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/entities/user.dart';
import 'package:flix_id_riverpod/domain/usecases/usecase.dart';

class GetLoggedInUser implements UseCase<Result<User>, void> {
  final Authentication _authentication;
  final UserRepository _userRepository;

  GetLoggedInUser(
      {required Authentication authentication,
      required UserRepository userRepository})
      : _authentication = authentication,
        _userRepository = userRepository;

  @override
  Future<Result<User>> call(void _) async {
    var loggedId = _authentication.getLoggedInUserId();
    if (loggedId != null) {
      var userResult = await _userRepository.getUser(uid: loggedId);

      if (userResult.isSuccess) {
        return Result.success(userResult.resultValue!);
      } else {
        return Result.failed(userResult.errorMessage!);
      }
    } else {
      return const Result.failed('No user logged in');
    }
  }
}
