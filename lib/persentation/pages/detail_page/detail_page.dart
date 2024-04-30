import 'package:flix_id_riverpod/domain/entities/movie.dart';
import 'package:flix_id_riverpod/persentation/misc/constants.dart';
import 'package:flix_id_riverpod/persentation/misc/methods.dart';
import 'package:flix_id_riverpod/persentation/providers/movie/movie_detail_provider.dart';
import 'package:flix_id_riverpod/persentation/providers/router/router_provider.dart';
import 'package:flix_id_riverpod/persentation/widgets/network_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/back_navigation_bar.dart';
import 'methods/background.dart';
import 'methods/cast_and_crew.dart';
import 'methods/movie_overview.dart';
import 'methods/movie_short_info.dart';

class DetailPage extends ConsumerWidget {
  final Movie movie;
  const DetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asynMovieDetail = ref.watch(MovieDetailProvider(movie: movie));
    return Scaffold(
      body: Stack(
        children: [
          ...background(movie),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackNavigationBar(
                      movie.title,
                      onTap: () {
                        ref.read(routerProvider).pop();
                      },
                    ),
                    verticalSpace(24),
                    NetworkImageCard(
                      width: MediaQuery.of(context).size.width - 48,
                      heigth: (MediaQuery.of(context).size.width - 48) * 0.6,
                      borderRadius: 15,
                      imageUrl: asynMovieDetail.valueOrNull != null
                          ? 'https://image.tmdb.org/t/p/w500${asynMovieDetail.value!.backdropPath ?? movie.posterPath}'
                          : null,
                          fit: BoxFit.cover,
                    ),
                    verticalSpace(24),
                    ...movieShortInfo(asyncMovieDetail: asynMovieDetail, context: context),
                    verticalSpace(20),
                    ...movieOverview(asynMovieDetail),
                    verticalSpace(40),
                  ],
                ),
              ),
              ...castAndCrew(
                movie: movie,
                ref: ref
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: backgroundColor,
                    backgroundColor: saffron,
                  ),
                  child: const Text('Book this movie'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
