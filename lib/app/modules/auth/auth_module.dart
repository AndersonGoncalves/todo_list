import 'package:provider/provider.dart';
import 'login/login_controller.dart';
import 'login/login_page.dart';
import 'register/register_controller.dart';
import 'register/register_page.dart';
import '../../core/modules/todo_list_module.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider<LoginController>(
              create: (context) => LoginController(userService: context.read()),
            ),
            ChangeNotifierProvider<RegisterController>(
              create: (context) => RegisterController(
                userService: context.read(),
              ),
            ),
          ],
          routers: {
            '/login': (_) => LoginPage(),
            '/register': (_) => RegisterPage(),
          },
        );
}
