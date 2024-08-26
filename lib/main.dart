import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task3/cartscreen.dart';
import 'package:task3/detailscreen.dart';
import 'package:task3/homepage.dart';
import 'package:task3/provider_lang.dart';
import 'package:task3/providers.dart';
import 'package:task3/user_screen.dart';
import 'package:task3/viewpage.dart';

import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) => ScreenUtilInit(
designSize: const Size(390,844),
            builder:(context, child) =>  MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: themeProvider.theme,
              ),
              locale: Locale(languageProvider.isEnglish ? 'en' : 'ar'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: const ViewPage(),
              routes: {
                '/home': (context) => const HomePage(),
                'detailscreen': (context) => const DetailScreen(),
                'cartscreen': (context) => const CartScreen(),
                'userscreen': (context) => const UserScreen(),
              },
            ),
          ),
        ),
      ),
    );
  }
}