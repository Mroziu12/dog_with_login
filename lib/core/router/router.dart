import 'package:dog_with_login/core/router/router_error_page.dart';
import 'package:dog_with_login/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/presentation/pages/singup_page.dart';

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
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    key: state.pageKey,
    child: RouterErrorPage(state.error),
  ),
  initialLocation: '/login',
);
