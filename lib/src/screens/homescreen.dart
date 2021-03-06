import 'package:flutter/material.dart';
import 'package:weather_alert_app/config/app_config.dart' as config;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: [
            Text('Home',
                style: TextStyle(color: config.ThemeColors.mainTextColor(1))),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/alert');
              },
              child: const Text('Weather data'),
            ),
            // Text('Home2',
            //     style: TextStyle(color: config.ThemeColors().backgroundColor(1))),
          ],
        )));
  }
}
