import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../models/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      alltasks: List.from(state.alltasks)..add(event.task),
    ));
  }

  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {
    // final state = this.state;
    // emit(TasksState(
    //   alltasks: List.from(state.alltasks)
    //     ..removeWhere((task) => task.title == event.task.title)
    //     ..add(event.task),
    // ));
  }

  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {
    // final state = this.state;
    // emit(TasksState(
    //   alltasks: List.from(state.alltasks)..removeWhere((task) => task.title == event.task.title),
    // ));
  }
}
