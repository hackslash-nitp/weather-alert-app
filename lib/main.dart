import 'package:weather_alert_app/config/app_config.dart' as config;
import 'package:weather_alert_app/provider/getit.dart';
import 'package:weather_alert_app/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:weather_alert_app/services/navigation_service.dart';
import 'package:dotenv/dotenv.dart' show env, load;
import 'package:http/http.dart' as http;

Future<void> main() async {
  load();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      title: 'Weather Alert Flutter',
      initialRoute: '/forecast',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'Poppins',
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF478DF4),
          secondary: Color(0xFFF4AE47),
          surface: Color(0xFFC4C4C4),
          background: Color(0xFFFFFFFF),
          error: Color(0xFFB00020),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          button: const TextStyle(color: Colors.white),

          /// Headline 1 style ---- Use it --- Do not change ----///
          headline1: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
              color: config.ThemeColors.mainTextColor(1)),

          /// Headline 2 style ---- Use it --- Do not change ----///
          headline2: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: config.ThemeColors.mainTextColor(1)),
          headline3: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: config.ThemeColors.mainTextSecondaryColor(1)),
          headline4: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: config.ThemeColors().secondColor(1)),
          headline5: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
              color: config.ThemeColors().mainColor(1)),
          subtitle1: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: config.ThemeColors().secondColor(1)),
          subtitle2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: config.ThemeColors().mainColor(1)),
          bodyText1: TextStyle(
              fontSize: 15.0, color: config.ThemeColors.mainTextColor(1)),
          bodyText2: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: config.ThemeColors.mainTextSecondaryColor(1)),
          caption: TextStyle(
            fontSize: 12.0,
            color: config.ThemeColors().secondColor(0.6),
          ),
        ),
      ),
    );
  }
}
