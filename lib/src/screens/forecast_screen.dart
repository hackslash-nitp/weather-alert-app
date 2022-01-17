import 'package:flutter/material.dart';
import 'package:weather_alert_app/config/app_config.dart' as config;
import 'package:weather_alert_app/provider/base_view.dart';
import 'package:weather_alert_app/views/weatherinfo_viewmodel.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BaseView<WeatherInfoViewModel>(
      onModelReady: (model) => model.getWeatherData(),
      builder: (ctx, model, child) => SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
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
                                // Text(
                                //   'Patna, India',
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: height / 34,
                                //       fontWeight: FontWeight.w400),
                                // ),
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
                                    // }
                                    // );
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
                        height: 30,
                        width: width,
                        child:  Center(
                            child: Text("No alert now",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width/17,
                                ))),
                      ),
                      Container(
                        height: 44,
                        width: width / 1.1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(child: Text(model.dateP0 + " - " + model.dateP3)),
                          elevation: 43,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 290,
                              width: width / 5.5,
                              child: Card(
                                color: Color.fromRGBO(224, 219, 219, 0.67),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text('Today',
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 5),
                                    Text(model.dateP0,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Icon(Icons.wb_sunny, color: Colors.yellow[500]),
                                    const SizedBox(height: 20),
                                    Text(model.maxTemp0,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Text(model.minTemp0,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 60),
                                    const Icon(Icons.wb_cloudy_outlined,
                                        color: Colors.black54),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 290,
                              width: width / 4.7,
                              child: Card(
                                color: Color.fromRGBO(255, 255, 255, 0.97),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text('Tomorrow',
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 5),
                                    Text(model.dateP1,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Icon(Icons.wb_sunny, color: Colors.yellow[500]),
                                    const SizedBox(height: 20),
                                    Text(model.maxTemp1,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Text(model.minTemp1,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 60),
                                    const Icon(Icons.wb_cloudy_outlined,
                                        color: Colors.black54),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 290,
                              width: width / 5.71,
                              child: Card(
                                color: Color.fromRGBO(255, 255, 255, 0.97),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text('Monday',
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 5),
                                    Text(model.dateP2,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Icon(Icons.wb_sunny, color: Colors.yellow[500]),
                                    const SizedBox(height: 20),
                                    Text(model.maxTemp2,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Text(model.minTemp2,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 60),
                                    const Icon(Icons.wb_cloudy_outlined,
                                        color: Colors.black54),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 290,
                              width: width / 4.63,
                              child: Card(
                                color: Color.fromRGBO(255, 255, 255, 0.97),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text('Tuesday',
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 5),
                                    Text(model.dateP3,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Icon(Icons.wb_sunny, color: Colors.yellow[500]),
                                    const SizedBox(height: 20),
                                    Text(model.maxTemp3,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 20),
                                    Text(model.minTemp3,
                                        style: TextStyle(
                                          color: Color.fromRGBO(98, 90, 90, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: width / 27.5,
                                        )),
                                    const SizedBox(height: 60),
                                    const Icon(Icons.wb_cloudy_outlined,
                                        color: Colors.black54),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width / 1.1,
                        child: Column(
                            children: [
                              Container(
                                height: 105,
                                width: width / 1.1,
                                child: Card(
                                    color: const Color.fromRGBO(255, 255, 255, 1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(11),
                                            topRight: Radius.circular(11))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children:  [
                                            SizedBox(width: width / 44),
                                            Text(
                                              "Day",
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: width / 22,
                                              ),
                                            ),
                                            SizedBox(width: width / 4.4),
                                            Icon(Icons.wb_sunny, color: Colors.yellow),
                                            SizedBox(width: width / 4.4),
                                            Text("19"),
                                            SizedBox(width: width / 22),
                                            Icon(Icons.arrow_upward, color: Colors.black54),
                                          ],
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(model.desc +  "," + "High"),
                                              Text("......................."),
                                              Text("............"),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Container(
                                height: 105,
                                width: width / 1.1,
                                child: Card(
                                    color: Color.fromRGBO(55, 86, 116, 1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: width / 44),
                                            Text(
                                              "Night",
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: width / 22,
                                              ),
                                            ),
                                            SizedBox(width: width / 4.4),
                                            Icon(Icons.wb_cloudy_outlined,
                                                color: Colors.yellow[500]),
                                            SizedBox(width: width / 4.4),
                                            Text("19"),
                                            SizedBox(width: width / 22),
                                            Icon(Icons.arrow_downward_sharp,
                                                color: Colors.black54),
                                          ],
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text( model.desc +  "," + "High"),
                                              Text("......................."),
                                              Text("............"),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),]),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
