import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routes/routes_provider.dart';

import 'config/app_theme.dart';


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
