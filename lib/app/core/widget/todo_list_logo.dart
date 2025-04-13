import '../ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import 'todo_list_field.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset('assets/logo.png', height: 200),
              Text('Todo List', style: context.textTheme.headlineSmall),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Form(
                  child: Column(
                    children: [
                      TodoListField(
                        label: 'E-mail',
                      ),
                      SizedBox(height: 20),
                      TodoListField(
                        label: 'Senha',
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Esqueci minha senha'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Login'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2,
                color: Colors.grey.withAlpha(50),
              ),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              SignInButton(
                Buttons.Google,
                text: 'Login com Google',
                padding: const EdgeInsets.all(5),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Não tem uma conta?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Cadastre-se'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
