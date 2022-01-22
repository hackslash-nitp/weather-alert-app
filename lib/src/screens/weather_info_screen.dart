import 'package:flutter/material.dart';
import 'package:weather_alert_app/provider/getit.dart';
import 'package:weather_alert_app/config/app_config.dart' as config;
import 'package:weather_alert_app/provider/base_view.dart';
import 'package:weather_alert_app/src/widgets/search_bar.dart';
import 'package:weather_alert_app/views/weatherinfo_viewmodel.dart';

class WeatherInfoScreen extends StatelessWidget {
  const WeatherInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    return BaseView<WeatherInfoViewModel>(
        builder: (ctx, model, child) => SafeArea(
                child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 90),
                      SearchBar(),
                      Container(
                          height: 223,
                          width: width / 1,
                          child: Card(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: width / 8,
                                    ),
                                    Text(
                                      "29-Dec-2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 20,
                                          color:
                                              Color.fromRGBO(101, 98, 98, 1)),
                                    ),
                                    SizedBox(
                                      width: width / 4,
                                    ),
                                    Text(
                                      "9:02 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 20,
                                          color:
                                              Color.fromRGBO(101, 98, 98, 1)),
                                    ),
                                    SizedBox(
                                      width: width / 8.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 98,
                                        width: width / 7.5,
                                        child: Icon(Icons.wb_cloudy,
                                            color: Colors.blue)),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "12 C",
                                          style: TextStyle(
                                            fontSize: width / 11.8,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                          ),
                                        ),
                                        Text(
                                          "Thunderstorm",
                                          style: TextStyle(
                                            fontSize: width / 22,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(20, 48, 90, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "19 C",
                                              style: TextStyle(
                                                fontSize: width / 22,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    20, 48, 90, 1),
                                              ),
                                            ),
                                            Icon(Icons.arrow_upward_sharp,
                                                color: Colors.black54),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "9 C",
                                              style: TextStyle(
                                                fontSize: width / 22,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    20, 48, 90, 1),
                                              ),
                                            ),
                                            Icon(Icons.arrow_downward_sharp,
                                                color: Colors.black54),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 11,
                                    ),
                                    SizedBox(
                                      width: width / 40,
                                      height: 180.0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width / 22,
                                    ),
                                    Column(
                                      children: const [
                                        Icon(Icons.cloud_circle),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Icon(Icons.water_sharp),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 22,
                                    ),
                                    Column(
                                      children: const [
                                        Text("N W"),
                                        Text("7 kmph"),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Text("81 %"),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            elevation: 10,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 30,
                        child: Center(
                            child: Text("No alert now",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width / 16.9,
                                ))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 127,
                        width: width / 1,
                        child: Card(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width / 22,
                              ),
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Icon(Icons.wb_sunny),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("06:31 am"),
                                ],
                              ),
                              SizedBox(
                                width: width / 2.2,
                              ),
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Icon(Icons.wb_sunny_outlined),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("05:03 pm"),
                                ],
                              )
                            ],
                          ),
                          elevation: 15,
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Container(
                        height: 187,
                        width: width / 1,
                        child: Card(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width / 29.3,
                                  ),
                                  Icon(
                                    Icons.wb_cloudy_rounded,
                                    color: Colors.cyanAccent,
                                  ),
                                  SizedBox(
                                    width: width / 29.3,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text("AQI",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width / 22,
                                          )),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text("70 | LOW",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width / 29.3,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width / 3,
                                  ),
                                  const Icon(
                                    Icons.wb_cloudy_rounded,
                                    color: Colors.cyanAccent,
                                  ),
                                  Column(
                                    children: [
                                      Text("Pressure",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width / 22,
                                          )),
                                      Text("1015 mbar",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width / 22,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width / 29.3,
                                  ),
                                  Icon(Icons.wb_cloudy),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: width / 29.3,
                                      ),
                                      Text("Chance of Rain",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width / 22,
                                          )),
                                      Text("1 %",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width / 22,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width / 5,
                                  ),
                                  Icon(
                                    Icons.wb_sunny_rounded,
                                    color: Colors.yellow,
                                  ),
                                  Column(
                                    children: [
                                      Text("UV Index",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width / 22,
                                          )),
                                      Text("1",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width / 22,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
