import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/movie_detail.dart';
import '../../../misc/methods.dart';

List<Widget> movieOverview(AsyncValue<MovieDetail?> asynMovieDetail) => [
      const Text(
        'Overview',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      verticalSpace(10),
      asynMovieDetail.when(
          data: (movieDetail) => Text(
        movieDetail != null  ? movieDetail.overview : '',
        style: const TextStyle(fontSize: 12),
      ),
          error: (error, stackTrace) => const Text("Failed to load movie's overview. Please try again later."),
          loading: () => const CircularProgressIndicator(),
        )
      
    ];
