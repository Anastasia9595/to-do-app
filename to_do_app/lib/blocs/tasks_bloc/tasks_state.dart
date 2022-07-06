part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> alltasks;
  final List<Task> removedTasks;
  const TasksState({
    this.alltasks = const <Task>[],
    this.removedTasks = const <Task>[],
  });

  @override
  List<Object?> get props => [alltasks, removedTasks];

  Map<String, dynamic> toMap() {
    return {
      'alltasks': alltasks.map((e) => e.toMap()).toList(),
      'removedTasks': removedTasks.map((e) => e.toMap()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(
      alltasks: List<Task>.from(map['alltasks']?.map((e) => Task.fromMap(e))),
      removedTasks: List<Task>.from(map['removedTasks']?.map((e) => Task.fromMap(e))),
    );
  }
}
