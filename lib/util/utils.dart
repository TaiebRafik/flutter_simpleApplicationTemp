import 'package:flutter/material.dart';
// "http://api.openweathermap.org/data/2.5/weather?q=Alger&APPID=b64f85cf453a58f98257c21c3e6fd94a&units=metric
final appId="b64f85cf453a58f98257c21c3e6fd94a";
final defaultCity="tizi Ouzou";
TextStyle text() {
  return new TextStyle(
    color: Colors.white,
    fontSize: 23.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
  );
}

TextStyle tempStyle() {
  return new TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
}