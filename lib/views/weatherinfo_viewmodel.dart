import 'package:dotenv/dotenv.dart';
import 'package:flutter/material.dart';
import 'package:weather_alert_app/provider/base_model.dart';
import 'package:weather/weather.dart';
class WeatherInfoViewModel extends BaseModel {
  String day = "sunny";
  WeatherFactory wf = new WeatherFactory('0fc8d53cab4163347cd518754dc4701d');
  String info = "";
  String temp = "";
  String feel = "";
  String maxTemp = "";
  String minTemp = "";
  String descri = "";
  String date = "";
  String time = "";
  String high ="";
  String low ="";
  String rise="";
  String set="";
  String speed="";
String chance="";
String pressure="";
String cloud="";
String wind="";
String last ="";

  void getWeatherData() async {
    Weather w = await wf.currentWeatherByCityName("Kolkata");
    speed = w.windSpeed.toString();
    rise = w.sunrise.toString().substring(11,16);
    set= w.sunset.toString().substring(11,16);
    info = w.humidity.toString();
    temp = w.temperature.toString();
    feel = w.tempFeelsLike.toString();
    low = w.tempMin.toString().substring(0,5);
    high = w.tempMax.toString().substring(0,5);
    descri = w.weatherDescription.toString();
    date = w.date.toString().substring(5,10);
    time = w.date.toString().substring(11,16);
    pressure = w.pressure.toString();
    cloud=w.cloudiness.toString();
    wind=w.windSpeed!.roundToDouble().toString();
    last = w.rainLast3Hours.toString();

    //time = w.
    // print("====================================" + w.humidity.toString());
    // info = "weather";

  }
}
