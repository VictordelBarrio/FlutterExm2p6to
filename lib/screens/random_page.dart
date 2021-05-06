import 'dart:math';

import 'package:flutter/material.dart';
import 'package:examen2p6to/screens/bienvenida_page.dart';

class RandomPage extends StatefulWidget {
  RandomPage(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;
  @override
  _RandomPageState createState() =>
      _RandomPageState(this.nameText, this.ageText, this.stateText);
}

class _RandomPageState extends State<RandomPage> {
  _RandomPageState(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  Random rnd = new Random();
  int num1 = 0;
  int num2 = 0;
  String randomFunc(int num1, int num2) {
    int min = num1;
    int max = num2;

    if (num1 < num2) {
      int r = min + rnd.nextInt(max - min);
      print("$r esta entre $min y $max"); // e.g. 31
      if (r == min) {
        r = r + 1;
      } else {
        r = r + 2;
      }
      return ('Your random number is ' + r.toString());
    } else {
      return ('please insert 2 number! number 1 must be less than number 2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Relieros del Norte - Num. Random'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              randomFunc(num1, num2),
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.red[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.orange,
                      Colors.red,
                    ],
                  )),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Number 1, must be lower than Number 2',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    num1 = int.parse(value);
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.red[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.orange,
                      Colors.red,
                    ],
                  )),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Number 2, must be higher than number 1',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    num2 = int.parse(value);
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 15.0,
                color: Colors.lime[300],
                shadowColor: Colors.lime[800],
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BienvenidaPage(
                              this.nameText, this.ageText, this.stateText)),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Go Back!',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
