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
  String high = "";
  String low = "";
  String rise = "";
  String set = "";
  String speed = "";
  String chance = "";
  String pressure = "";
  String cloud = "";
  String wind = "";
  String last = "";

  //Day-0
  String dateP0 = "";
  String maxTemp0 = "";
  String minTemp0 = "";

  // Day-0
  String dateP1 = "";
  String maxTemp1 = "";
  String minTemp1 = "";

  //Day-0
  String dateP2 = "";
  String maxTemp2 = "";
  String minTemp2 = "";

  //Day-0
  String dateP3 = "";
  String maxTemp3 = "";
  String minTemp3 = "";
  String desc = "";

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
    List<Weather> forecast = await wf.fiveDayForecastByCityName("Patna");
    //Day-0
    maxTemp0 = forecast[0].tempMax.toString().substring(0,6);
    minTemp0 = forecast[0].tempMin.toString().substring(0,6);
    dateP0  = forecast[0].date.toString().substring(5,10);
    //Day-0
    maxTemp1 = forecast[1].tempMax.toString().substring(0,6);
    minTemp1 = forecast[1].tempMin.toString().substring(0,6);
    dateP1  = forecast[1].date.toString().substring(5,10);
    // //Day-0
    maxTemp2 = forecast[2].tempMax.toString().substring(0,6);
    minTemp2 = forecast[2].tempMin.toString().substring(0,6);
    dateP2  = forecast[2].date.toString().substring(5,10);
    // //Day-0
    maxTemp3 = forecast[3].tempMax.toString().substring(0,6);
    minTemp3 = forecast[3].tempMin.toString().substring(0,6);
    dateP3  = forecast[3].date.toString().substring(5,10);

    temp = forecast[0].temperature.toString().substring(0,6);
    desc = forecast[0].weatherDescription.toString();

    //time = w.
    // print("====================================" + w.humidity.toString());
    // info = "weather";


    }

}
