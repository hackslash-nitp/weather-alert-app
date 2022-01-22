import 'package:flutter/material.dart';
import 'package:weather_alert_app/provider/base_view.dart';
import 'package:weather_alert_app/src/widgets/search_bar.dart';
import 'package:weather_alert_app/views/weatherinfo_viewmodel.dart';

class AlertRescue extends StatelessWidget {
  const AlertRescue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BaseView<WeatherInfoViewModel>(
        onModelReady: (model) => model.getWeatherData(),
        builder: (ctx, model, child) => SafeArea(
              child: Scaffold(
                body: Column(
                  children: [
                    SearchBar(),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            Text(model.temp),
                            Text(
                              'Severe Alert',
                              style: TextStyle(
                                  fontSize: height / 30.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(233, 16, 16, 1.00)),
                            ),
                            Text(
                              'You are not safe',
                              style: TextStyle(
                                  fontSize: height / 35.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(177, 67, 67, 1)),
                            ),
                            SizedBox(
                              height: height / 45.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                              child: Container(
                                // height: height / 4.0,
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Text(
                                          'Earthquake',
                                          style: TextStyle(
                                              fontSize: height / 45.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              18.0, 20.0, 10.0, 0),
                                          child: Image.asset(
                                              'asset/earthquake.png'),
                                        ),
                                        SizedBox(
                                          width: width / 20,
                                        ),
                                        Text(
                                          'Magnitude : 6.2(Moderate)\nLocation :\nDepth : 8.2km',
                                          style: TextStyle(
                                              fontSize: height / 45.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    // SizedBox(
                                    //   height: height / 90.0,
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          90, 0, 0, 0),
                                      child: FractionallySizedBox(
                                        widthFactor: 0.5,
                                        child: FlatButton(
                                            onPressed: () {},
                                            color: Color(0xFF478DF4),
                                            child: Text(
                                              'See on Maps',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  // fontSize: height / 50,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: height/30.0,)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                'Ways of Rescue',
                                style: TextStyle(
                                    fontSize: height / 50.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(38, 50, 56, 1)),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        'Lists present content in a way that makes it easy to identify a specific item',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width / 25,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
