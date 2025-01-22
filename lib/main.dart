import 'package:flutter/material.dart';
import 'package:flutter_practice/presentation/pages/details_page.dart';
import 'package:flutter_practice/presentation/pages/home_page/home_page.dart';
import 'package:flutter_practice/presentation/pages/login_page/login_screen.dart';
import 'package:flutter_practice/presentation/pages/profile_screen/pricing_screen.dart';
import 'package:flutter_practice/presentation/pages/profile_screen/profile_screen.dart';
import 'package:go_router/go_router.dart';

import 'data/models/user_model_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
        name: "/home",
        path: "/home",
        builder: (context, state) {
          return const HomePage();
        }),
    GoRoute(
        name: "/details",
        path: "/details",
        builder: (context, state) {
          return const DetailsPage();
        }),
    GoRoute(
        name: "/login",
        path: "/login",
        builder: (context, state) {
          return const LoginScreen();
        }),
    GoRoute(
        name: "/profile",
        path: "/profile",
        builder: (context, state) {
          final User user = state.extra as User;
          return ProfileScreen(user: user);
        }),
    GoRoute(
        name: "/pricing",
        path: "/pricing/:price",
        builder: (context, state) {
          final double amount = double.parse(state.pathParameters["price"]!);
          return PricingScreen(
            amount: amount,
          );
        }),
  ],
);
