import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../util/utils.dart';

Future<Map> getWeather(String ville) async {

  String apiUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=$ville&APPID=${appId}&units=metric";
  http.Response response = await http.get(apiUrl);
  return json.decode(response.body);
}

Widget updateTempWidget(String ville) {
  print('la ville: $ville \n ');
//  if (city == "") {
//    print("null 17/appeappi");
//    city = defaultCity;
//  }
  return new FutureBuilder(
      future: getWeather(ville),
      //snqpshot of the data we recive from our future object

      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        //get json data &set up widget
        if (snapshot.hasData) {
          Map content = snapshot.data;
          return new Container(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("${content["main"]["temp"].toString()}°C",
                      style: tempStyle()),
                )
              ],
            ),
          );
        } else
          return new Text("0");
      });
}
