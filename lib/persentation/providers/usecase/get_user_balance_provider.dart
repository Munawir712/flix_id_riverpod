import 'package:flix_id_riverpod/domain/usecases/get_user_balance/get_user_balance.dart';
import 'package:flix_id_riverpod/persentation/providers/repositories/user_reposiotries/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_user_balance_provider.g.dart';

@riverpod
GetUserBalance getUserBalance(GetUserBalanceRef ref) =>
    GetUserBalance(userRepository: ref.watch(userRepositoryProvider));
