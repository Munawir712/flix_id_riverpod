import 'package:flix_id_riverpod/persentation/pages/login_page/login_page.dart';
import 'package:flix_id_riverpod/persentation/pages/main_page/main_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(routes: [
      GoRoute(
        path: '/main',
        name: 'main',
        builder: (context, state) => MainPage(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
    ], initialLocation: '/login', debugLogDiagnostics: false);