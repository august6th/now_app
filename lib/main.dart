import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "providers/loader.dart";
import "routes.dart";
import 'theme/now_theme.dart';
import "ui/now_ui.dart" show Window;

main() {
  runApp(MultiProvider(
    child: NowApp(),
    providers: providers,
  ));
}

class NowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Window.init();
    return MaterialApp(
      theme: NowTheme.light(),
      darkTheme: NowTheme.dark(),
      debugShowCheckedModeBanner: false,
      routes: Routers.routes,
      initialRoute: Routers.initialRoute,
    );
  }
}
