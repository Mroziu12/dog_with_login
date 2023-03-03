import 'package:dog_with_login/core/router/router_error_page.dart';
import 'package:dog_with_login/features/home/presentation/pages/homePage.dart';
import 'package:dog_with_login/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/presentation/pages/singup_page.dart';
import '../../features/login/presentation/pages/start_page.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      builder: ((context, state) => LoginPage()),
    ),
    GoRoute(
      path: '/signup',
      builder: ((context, state) => SignupPage()),
    ),
    GoRoute(
      path: '/home',
      builder: ((context, state) => HomePage()),
    ),
    GoRoute(
      path: '/start',
      builder: ((context, state) => StartPage()),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    key: state.pageKey,
    child: RouterErrorPage(state.error),
  ),
  initialLocation: '/start',
);
