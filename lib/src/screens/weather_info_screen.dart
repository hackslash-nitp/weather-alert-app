import 'package:flutter/material.dart';
import 'package:weather_alert_app/provider/getit.dart';
import 'package:weather_alert_app/config/app_config.dart' as config;
import 'package:weather_alert_app/provider/base_view.dart';
import 'package:weather/weather.dart';
import 'package:weather_alert_app/views/Forecast_Info_ViewModel.dart';

class WeatherInfoScreen extends StatelessWidget {
  const WeatherInfoScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BaseView<ForecastInfoViewModel>(
        onModelReady: (model) => model.getWeatherData(),
        builder: (ctx, model, child) => SafeArea(
            child : Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(

                  ),
                  child: Column(
                    crossAxisAlignment :CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                        child: Container(
                          height: height / 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: const Color.fromRGBO(58, 74, 88, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.article,
                                  size: height / 25,
                                  color: Color.fromRGBO(181, 205, 242, 1),
                                ),
                                Text(
                                  'Patna, India',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height / 34,
                                      fontWeight: FontWeight.w400),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // setState(() {
                                    //   TextField(
                                    //     decoration: InputDecoration(
                                    //       hintText: 'Patna, India',
                                    //       hintStyle: TextStyle(
                                    //         color: Colors.white,
                                    //         fontSize: 18,
                                    //         fontStyle: FontStyle.italic,
                                    //       ),
                                    //       border: InputBorder.none,
                                    //     ),
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //     ),
                                    //   );
                                    // });
                                  },
                                  icon: Icon(
                                    Icons.search,
                                    size: height / 25,
                                  ),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 223,
                          width: width/1,
                          child: Card(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Column(
                              children: [
                                Row(
                                  children:  [
                                    SizedBox(
                                      width: width/5,
                                    ),
                                    Text(
                                      model.date,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width/20,
                                          color: Color.fromRGBO(101, 98, 98, 1)),
                                    ),
                                    SizedBox(
                                      width: width/3,
                                    ),
                                    Text(
                                      model.time,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width/20,
                                          color: Color.fromRGBO(101, 98, 98, 1)),
                                    ),
                                    SizedBox(
                                      width: width/8.3,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 98,
                                        width: width/7.5,
                                        child: Icon(Icons.wb_cloudy,
                                            color: Colors.blue)),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          model.temp,
                                          style: TextStyle(
                                            fontSize: width/15,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                          ),
                                        ),
                                        Text(
                                          model.descri,
                                          style: TextStyle(
                                            fontSize: width/22,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20, 48, 90, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children:   [
                                            Text(
                                              model.high,
                                              style: TextStyle(
                                                fontSize: width/22,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                Color.fromRGBO(20, 48, 90, 1),
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
                                          children:   [
                                            Text(
                                              model.low,
                                              style: TextStyle(
                                                fontSize: width/22,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                Color.fromRGBO(20, 48, 90, 1),
                                              ),
                                            ),
                                            Icon(Icons.arrow_downward_sharp,
                                                color: Colors.black54),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width/11,
                                    ),
                                    SizedBox(
                                      width: width/40,
                                      height: 180.0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(196, 196, 196, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width/22,
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
                                      width:width/22,
                                    ),
                                    Column(
                                      children:  [
                                        Text("N W"),
                                        Text(model.speed),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Text(model.info),
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
                        child:   Center(
                            child: Text("No alert now",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width/16.9,
                                ))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 127,
                        width: width/1,
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
                                width: width/10,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Icon(Icons.wb_sunny),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(model.rise),
                                ],
                              ),
                              SizedBox(
                                width: width/1.8,
                              ),
                              Column(
                                children:  [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Icon(Icons.wb_sunny_outlined),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(model.set),
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
                        width: width/1,
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
                                    width: width/29.3,
                                  ),
                                  Icon(
                                    Icons.wb_cloudy_rounded,
                                    color: Colors.cyanAccent,
                                  ),
                                  SizedBox(
                                    width: width/29.3,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text("Cloudliness",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width/23,
                                          )),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(model.cloud,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width/29.3,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width/7,
                                  ),
                                  const Icon(
                                    Icons.device_hub,
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    children:  [
                                      Text("Pressure",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width/22,
                                          )),
                                      Text(model.pressure,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width/22,
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
                                    width: width/29.3,
                                  ),
                                  Icon(Icons.wb_cloudy),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: width/29.3,
                                      ),
                                      Text("Wind Gust",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width/22,
                                          )),
                                      Text(model.wind,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: width/22,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width/5.5,
                                  ),
                                  Icon(
                                    Icons.water,
                                    color: Colors.blue,
                                  ),
                                  Column(
                                    children:  [
                                      Text("Rain Percentage",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width/22,
                                          )),
                                      Text(model.last,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize:width/22,
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
