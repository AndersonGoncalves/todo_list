import 'package:flutter/material.dart';
import 'sqlite_connection_factory.dart';

class SqliteAdmConnection with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final connection = SqliteConnectionFactory();

    if (state case AppLifecycleState.resumed) {
      connection.openConnection();
    } else if (state
        case AppLifecycleState.inactive ||
            AppLifecycleState.paused ||
            AppLifecycleState.detached) {
      connection.closeConnection();
    }

    super.didChangeAppLifecycleState(state);
  }
}
