import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../datasource/task_datasource_provider.dart';
import 'task_repository_impl.dart';

import 'task_repository.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.read(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
