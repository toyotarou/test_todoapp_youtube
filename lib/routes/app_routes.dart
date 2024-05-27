import 'package:go_router/go_router.dart';
import 'routes_provider.dart';

import '../screens/create_task_screen.dart';
import '../screens/home_screen.dart';
import 'route_location.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.createTask,
    parentNavigatorKey: navigationKey,
    builder: CreateTaskScreen.builder,
  ),
];
