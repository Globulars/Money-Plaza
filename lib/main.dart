import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.bottomsheets.dart';
import 'package:money_plaza/app/app.dialogs.dart';
import 'package:money_plaza/app/app.locator.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await EasyLocalization.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    home:  EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          fallbackLocale: Locale('en'),
          saveLocale: true,
          useOnlyLangCode: true,
          useFallbackTranslations: true, child: Container(),
        ),
    );
  }
}

// import 'package:money_plaza/ui/common/app_icons.dart';
