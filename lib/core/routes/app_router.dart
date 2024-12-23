import 'package:flutter_mvvm_architecture_template/features/home/presentation/views/home_view.dart';
import 'package:flutter_mvvm_architecture_template/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: homeView, builder: (context, state) => const HomeView()),
  ]);
}
