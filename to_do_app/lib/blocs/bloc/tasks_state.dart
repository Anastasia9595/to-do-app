part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> alltasks;
  const TasksState({
    this.alltasks = const <Task>[],
  });

  @override
  List<Object?> get props => [alltasks];
}
