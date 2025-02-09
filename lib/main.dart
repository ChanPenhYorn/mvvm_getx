import 'package:flutter/material.dart';
import 'package:todo_kh/src/routes/app_page.dart';
import 'package:todo_kh/src/routes/app_route.dart';
import 'package:todo_kh/src/utils/translation_util.dart';
import 'package:todo_kh/src/views/home/home_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TranslationUtil translations = TranslationUtil();
  await translations.loadTranslations();
  runApp(MyApp(
    translations: translations,
  ));
}

class MyApp extends StatelessWidget {
  final TranslationUtil translations;

  MyApp({super.key, required this.translations});
  final routeObserver = GetObserver();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('en', 'US'), // Default locale
      fallbackLocale: const Locale('en', 'US'), // Fallback locale
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('km', 'KH'),
      ],

      translations: translations,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
      navigatorObservers: [routeObserver],
      home: const HomeScreen(),
    );
  }
}
