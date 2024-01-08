import 'package:flix_id_riverpod/domain/usecases/register/register.dart';
import 'package:flix_id_riverpod/persentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:flix_id_riverpod/persentation/providers/repositories/user_reposiotries/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_provider.g.dart';

@riverpod
Register register(RegisterRef ref) => Register(
    authentication: ref.watch(authenticationProvider),
    userRepository: ref.watch(userRepositoryProvider));
