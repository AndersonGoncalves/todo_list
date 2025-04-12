import 'login/login_controller.dart';
import 'login/login_page.dart';
import '../../core/modules/todo_list_module.dart';
import 'package:provider/provider.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider<LoginController>(
              create: (_) => LoginController(),
            ),
          ],
          routers: {
            '/login': (_) => LoginPage(),
          },
        );
}
