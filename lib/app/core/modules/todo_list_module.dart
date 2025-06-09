import 'todo_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/single_child_widget.dart';

abstract class TodoListModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TodoListModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (_) => TodoListPage(
          bindings: _bindings,
          page: pageBuilder,
        ),
        // (_) => MultiProvider(
        //   providers: _bindings ?? [Provider(create: (_) => Object())],
        //   child: Builder(
        //     builder: (context) => pageBuilder(context),
        //   ),
        // ),
      ),
    );
  }
}
