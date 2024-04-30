import 'package:flix_id_riverpod/persentation/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/movie_detail.dart';

List<Widget> movieShortInfo(
        {required AsyncValue<MovieDetail?> asyncMovieDetail,
        required BuildContext context}) =>
    [
      Row(
        children: [
          SizedBox(
            width: 14,
            height: 14,
            child: Image.asset('assets/duration.png'),
          ),
          horizontalSpaces(5),
          SizedBox(
            width: 95,
            child: Text(
              '${asyncMovieDetail.when(data: (movieDetail) => movieDetail != null ? movieDetail.runtime : '-', error: (error, stackTrace) => '-', loading: () => '-')} minutes',
              style: const TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 14,
            width: 14,
            child: Image.asset('assets/genre.png'),
          ),
          horizontalSpaces(5),
          SizedBox(
            width: MediaQuery.of(context).size.width - 48 - 95 - 28 - 10,
            child: asyncMovieDetail.when(
              data: (movieDetail) {
                String genres = movieDetail?.genres.join(', ') ?? '';
                return Text(
                  genres,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                );
              },
              error: (error, stackTrace) => const Text(
                '-',
                style: TextStyle(fontSize: 12),
              ),
              loading: () => const Text(
                '-',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
      verticalSpace(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 18,
            height: 18,
            child: Image.asset('assets/star.png'),
          ),
          horizontalSpaces(5),
          Text((asyncMovieDetail.valueOrNull?.voteAverage ?? 0).toStringAsFixed(1))
        ],
      ),
    ];
