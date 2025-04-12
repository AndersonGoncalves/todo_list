import 'login_controller.dart';
import '../../../core/database/sqlite_connection_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<LoginController>(context);
    final sqliteConnectionFactory =
        Provider.of<SqliteConnectionFactory>(context);
    sqliteConnectionFactory.openConnection();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(),
    );
  }
}
