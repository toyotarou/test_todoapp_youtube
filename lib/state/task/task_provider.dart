import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_todoapp_youtube/state/task/task_notifier.dart';
import 'package:test_todoapp_youtube/state/task/task_state.dart';

import '../../repository/task_repository_provider.dart';

// import 'package:flutter_riverpod_todo_app/data/data.dart';
// import 'package:flutter_riverpod_todo_app/providers/providers.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
