import 'package:flutter/material.dart';
import 'package:gdg/Views/Tasks_view.dart';
import 'package:go_router/go_router.dart';
import 'package:gdg/views/add_task_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TasksView(),
    ),
    GoRoute(
      path: '/add-task',
      builder: (context, state) => AddTaskView(),
    ),
  ],
);
