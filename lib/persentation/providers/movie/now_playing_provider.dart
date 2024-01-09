import 'package:flix_id_riverpod/domain/entities/movie.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/usecases/get_movie_list/get_movie_list.dart';
import 'package:flix_id_riverpod/domain/usecases/get_movie_list/get_movie_list_param.dart';
import 'package:flix_id_riverpod/persentation/providers/usecase/get_movie_list_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'now_playing_provider.g.dart';

@Riverpod(keepAlive: true)
class NowPlaying extends _$NowPlaying {
  @override
  FutureOr<List<Movie>> build() => const [];

  Future<void> getMovies({int page = 1}) async {
    state = const AsyncLoading();

    GetMovieList getMovieList = ref.read(getMovieListProvider);

    var result = await getMovieList(GetMovieListParam(
        category: MovieListCategories.nowPlaying, page: page));

    switch (result) {
      case Success(value: final movie):
        state = AsyncData(movie);
      case Failed(message: _):
        state = const AsyncData([]);
    }
  }
}
