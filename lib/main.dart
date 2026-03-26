import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'registration_page.dart';
import 'constants/colors.dart';
import 'constants/text_styles_value.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('kk'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registration App",
      
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      
      theme: ThemeData(
        primaryColor: AppColors.secondary,
        textTheme: TextTheme(
          bodyMedium: AppTextStyles.px10blue,
        ),
      ),
      home: RegistrationPage(),
    );
  }
}