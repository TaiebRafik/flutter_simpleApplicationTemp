import 'package:flutter/material.dart';
import '../util/utils.dart';
import '../util/changeScreen.dart';
class ChangeCity extends StatelessWidget {
  var _cityController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text(
          "Information",
          style: text(),
        ),
        centerTitle: true,
      ),
      body: new Stack(

        children: <Widget>[
          new Center(
            child: new Image.asset(
              "images/white_snow.png",
              height: 100000,
              width: 100000,
              fit: BoxFit.fill,
            ),
          ),
          new ListView(
            children: <Widget>[
              new ListTile(
                title: new TextField(
                  decoration: new InputDecoration(
                      hintText: "entrer le nom de la ville",
                      labelText: 'Ville'),
                  controller: _cityController,
                  keyboardType: TextInputType.text,
                ),
                leading: new Icon(Icons.location_city),
              ),
              new ListTile(
                title: new FlatButton(
                    color: Colors.redAccent,
                    onPressed: () {

                      goToNextScreen(context,_cityController.text);

                    },
                    child: new Text(
                      "ok",
                      style: text(),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}