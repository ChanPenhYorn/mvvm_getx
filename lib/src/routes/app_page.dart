import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todo_kh/src/routes/app_route.dart';
import 'package:todo_kh/src/views/home/home_screen.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
  ];
}
