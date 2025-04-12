import '../../../core/widget/todo_list_logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F3F7),
      //LayoutBuilder: Para saber o tamanho da tela
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            //IntrinsicHeight: Para controlar o tamanho da tela (o filho não tem o tamanho infinito, ele tem o tamanho que precisa ter)
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TodoListLogo(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
