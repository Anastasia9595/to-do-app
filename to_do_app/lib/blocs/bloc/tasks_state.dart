part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> alltasks;
  const TasksState({
    this.alltasks = const <Task>[],
  });

  @override
  List<Object?> get props => [alltasks];

  Map<String, dynamic> toMap() {
    return {
      'alltasks': alltasks.map((e) => e.toMap()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(alltasks: List<Task>.from(map['alltasks']?.map((e) => Task.fromMap(e))));
  }
}
