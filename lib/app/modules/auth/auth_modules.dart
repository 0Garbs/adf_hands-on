import 'package:app/app/core/modules/todo_list_module.dart';
import 'package:app/app/modules/auth/login/login_controller.dart';
import 'package:app/app/modules/auth/login/login_page.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class AuthModules extends TodoListModule {
  AuthModules()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            )
          ],
          routers: {
            '/login': (context) => LoginPage(),
          },
        );
}
