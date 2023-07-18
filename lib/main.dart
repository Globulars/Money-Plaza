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
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('zh')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Plaza',
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: Routes.rewardView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}

// import 'package:money_plaza/ui/common/app_icons.dart';
