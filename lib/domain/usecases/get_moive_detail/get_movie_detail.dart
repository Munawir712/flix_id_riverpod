import 'package:flix_id_riverpod/data/repositories/movie_repository.dart';
import 'package:flix_id_riverpod/domain/entities/movie_detail.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/usecases/get_moive_detail/get_movie_detail_param.dart';
import 'package:flix_id_riverpod/domain/usecases/usecase.dart';

class GetMovieDetail
    implements UseCase<Result<MovieDetail>, GetMovieDetailParam> {
  final MovieRepository _movieRepository;

  GetMovieDetail({required MovieRepository movieRepository})
      : _movieRepository = movieRepository;

  @override
  Future<Result<MovieDetail>> call(GetMovieDetailParam params) async {
    var movieResult = await _movieRepository.getDetail(id: params.movie.id);
    if (movieResult.isSuccess) {
      return Result.success(movieResult.resultValue!);
    } else {
      return Result.failed(movieResult.errorMessage!);
    }
  }
}
