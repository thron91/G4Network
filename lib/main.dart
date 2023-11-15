import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:ronan_s_application2/theme/theme_helper.dart';
import 'package:ronan_s_application2/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'ronan_s_application2',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.iphoneMessagerieContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}
