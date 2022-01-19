import 'package:flutter/material.dart';
import 'package:weather_alert_app/src/screens/homescreen.dart';
import 'package:weather_alert_app/src/screens/forecast_screen.dart';
import 'package:weather_alert_app/src/screens/weather_info_screen.dart';
import 'package:weather_alert_app/src/screens/alert_rescue.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case '/forecast':
        return MaterialPageRoute(builder: (_) => const ForecastScreen());

      case '/weatherinfo':
        return MaterialPageRoute(builder: (_) => const WeatherInfoScreen());

      case "/alert":
        return MaterialPageRoute(builder: (_) => const AlertRescue());

//      case '/MobileVerification':
//        return MaterialPageRoute(builder: (_) => MobileVerification());
//      case '/MobileVerification2':
//        return MaterialPageRoute(builder: (_) => MobileVerification2());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
