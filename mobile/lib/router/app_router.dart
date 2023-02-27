import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile/presentation/dummy_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DummyScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
