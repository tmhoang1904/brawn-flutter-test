import 'package:brawn_app_test/presentation/mixin/network_aware_state.dart';
import 'package:brawn_app_test/presentation/modules/home/view/home_page.dart';
import 'package:brawn_app_test/presentation/navigation/navigation.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<App> with NetworkAwareState {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      navigatorKey: NavigationService.navigatorKey,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void onDisconnected() {
    final context = NavigationService.navigatorKey.currentState?.context;
    if (context != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("You're offline.")));
    }
  }

  @override
  void onReconnected() {
    final context = NavigationService.navigatorKey.currentState?.context;
    if (context != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("You're online.")));
    }
  }
}
