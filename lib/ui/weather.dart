import 'package:flutter/material.dart';
import 'package:weather/util/changeScreen.dart';
import 'package:weather/util/utils.dart';
import '../util/utils.dart' ;
import 'appelApi.dart';

class klimatic extends StatefulWidget {
  final String ville;
  klimatic({this.ville,Key k}):super(key: k );
  @override
  _klimaticState createState() => _klimaticState();
}

class _klimaticState extends State<klimatic> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Méteo",
        ),
        backgroundColor: Colors.red,
      ),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "images/umbrella.png",
              height: 100000,
              width: 100000,
              fit: BoxFit.fill,
            ),
          ),
          new Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0.0, 14.0, 19.0, 0.0),
              child: new Text(
                "${widget.ville}",
                style: text(),
              )),
          new Container(
            alignment: Alignment.center,
            child: new Image.asset(
              "images/light_rain.png",
            ),
          ),
          new Container(
            // margin: const EdgeInsets.fromLTRB(left, top, right, bottom),
            margin: const EdgeInsets.fromLTRB(200.0, 450.0, 0.0, 0.0),
            child: updateTempWidget("${widget.ville}"),
          )
        ],
      ),
    );
  }


}
