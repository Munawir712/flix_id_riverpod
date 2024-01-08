import 'package:flix_id_riverpod/domain/usecases/upload_profile_picture/upload_profile_picture.dart';
import 'package:flix_id_riverpod/persentation/providers/repositories/user_reposiotries/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_profile_picture_provider.g.dart';

@riverpod
UploadProfilePicture uploadProfilePicture(UploadProfilePictureRef ref) =>
    UploadProfilePicture(userRepository: ref.watch(userRepositoryProvider));
