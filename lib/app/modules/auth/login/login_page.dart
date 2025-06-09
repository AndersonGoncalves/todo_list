import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import '../../../core/widget/todo_list_field.dart';
import '../../../core/widget/todo_list_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF0F3F7),
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
                mainAxisSize:
                    MainAxisSize.min, //o mínimo de tamanho que ele pode ter
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TodoListLogo(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
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
                                child: Text('Esqueceu a senha?'),
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
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F3F7),
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
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/register');
                                },
                                child: Text('Cadastre-se'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
