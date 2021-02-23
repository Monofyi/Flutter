import 'package:disposable_provider/disposable_provider.dart';
import 'package:flamingo/flamingo.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/router.dart';
import 'package:inventory_management/ui/components/bottom_navigator.dart';
import 'package:inventory_management/ui/splash_page.dart';
import 'package:provider/provider.dart';

import 'app/providers/repository_provider.dart';
import 'domain/app_navigator.dart';
import 'domain/app_root_switcher.dart';

void main() {
  _initializePluginsBeforeAppLaunches();
  runApp(BiteCopeApp.wrapped());
}

void _initializePluginsBeforeAppLaunches() {
  // note: To initialize [InAppBillingRepository] before calling `runApp`.
  //       Because [InAppPurchaseConnection] uses [WidgetsBinding].
  WidgetsFlutterBinding.ensureInitialized();

  Flamingo.configure(
    firestore: Firestore.instance,
    storage: FirebaseStorage.instance,
    root: Firestore.instance.document(''),
  );
}

enum MainPageTab {
  home,
  setting,
  orders,
  bill,
}

class BiteCopeApp extends StatelessWidget {
  const BiteCopeApp({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        RepositoriesProvider(),
        Provider(
          lazy: false,
          create: (_) => AppNavigator(
            navigatorKey: GlobalKey(debugLabel: "for Global Navigation"),
          ),
        ),
        Provider(
          lazy: false,
          create: (_) => GlobalRouter(
            shouldShowDebugMenu:
                // note: shows it only when debug build.
                false,
          ),
        ),
        DisposableProvider(
          lazy: false,
          create: (_context) => AppRootSwitcher(
            accountRepository: _context.read(),
            appNavigator: _context.read(),
          ),
        )
      ],
      child: BiteCopeApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey:
          Provider.of<AppNavigator>(context, listen: false).navigatorKey,
      onGenerateRoute:
          Provider.of<GlobalRouter>(context, listen: false).onGenerateRoute,
      home: () {
        return const SplashPage();
      }(),
    );
  }
}

/// A controller to switch content of [MainPage] by tapping tab.
class MainTabController extends ValueNotifier<MainPageTab> {
  MainTabController() : super(MainPageTab.home);

  void changeTab(MainPageTab tab) {
    value = tab;
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainTabController(),
        ),
      ],
      child: Scaffold(
        bottomNavigationBar: _BottomNavigation(),
      ),
    );
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation();

  @override
  Widget build(BuildContext context) {
    final tabController = context.watch<MainTabController>();
    final currentTabIndex = tabController.value.index;
    return AppBottomNavigationBar(
      currentIndex: currentTabIndex,
      onTap: (index) {
        tabController.changeTab(MainPageTab.values[index]);
      },
    );
  }
}
