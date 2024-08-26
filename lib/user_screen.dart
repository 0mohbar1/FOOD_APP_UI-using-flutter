import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task3/provider_lang.dart';
import 'package:task3/providers.dart';

import 'main.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    final langprovider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Useeer",
                style: TextStyle(
                    fontSize: 15.sp, color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Center(
              child: Switch(
                  value: provider.isDark,
                  onChanged: (val) {
                    provider.toggleTheme();
                  }),
            ),
            Center(
              child: Switch(
                  value: langprovider.isEnglish,
                  onChanged: (valle)
                  {
                    langprovider.toggleLanguage();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
