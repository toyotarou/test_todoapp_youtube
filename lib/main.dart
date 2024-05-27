import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_todoapp_youtube/routes/routes_provider.dart';

import 'config/app_theme.dart';
import 'screens/home_screen.dart';

import 'package:riverpod/riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routeConfig = ref.watch(routesProvider);

    return MaterialApp.router(
      theme: AppTheme.light,
      // home: const HomeScreen(),
      //
      routerConfig: routeConfig,
    );
  }
}
