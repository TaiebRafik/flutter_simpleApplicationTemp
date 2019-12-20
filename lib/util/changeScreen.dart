import 'package:flutter/material.dart';
import 'package:weather/ui/weather.dart';
import '../ui/changeCity.dart';
import 'dart:async';
import 'utils.dart'as util;

Future goToNextScreen(BuildContext context,String ville) async {
  if (ville== ""){
    ville=util.defaultCity;
  }
  var route = new MaterialPageRoute<Map>(builder: (BuildContext context) {
    return new klimatic(ville: ville);
  });
  await Navigator.of(context).push(route);
}