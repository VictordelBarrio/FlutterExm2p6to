import 'package:flutter/material.dart';
import 'package:examen2p6to/screens/bienvenida_page.dart';
import 'dart:math';

class FormulaCuadratica extends StatefulWidget {
  FormulaCuadratica(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  @override
  _FormulaCuadraticaState createState() =>
      _FormulaCuadraticaState(this.nameText, this.ageText, this.stateText);
}

class _FormulaCuadraticaState extends State<FormulaCuadratica> {
  _FormulaCuadraticaState(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  String equacion(double a1, double b1, double c) {
    int t = 0;
    double a = a1;
    double b = b1;
    double caballo = c;
    double d = 0;
    double z = 0;
    double x2 = 0;

    if (a != 0) {
      print("Aqui vamos...");
    } else {
      print("No es posible realizar la operacion");
    }
    {
      d = (b * b - (4 * a * b));
    }
    if (d > 0) {
      z = (b * -1) - d;
      a = a * 2;
      z = z / a + caballo - caballo;
      x2 = (b * -1) - (d) / (2 * a);
      print(z);
      print(x2);
    } else {
      print("No es posible realizar la operacion, revisa tus datos");
      t = 1;
    }

    if (t == 1) {
      return ('not possible!!');
    } else {
      return ('the num 1 is ' +
          z.toString() +
          ' and num 2 is ' +
          x2.toString());
    }
  }

  double a1 = 0;
  double b1 = 0;
  double c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Relieros del Norte - Formula General'),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text('Your Result is ' + equacion(a1, b1, c)),
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
                  hintText: 'x1',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    a1 = double.parse(value);
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
                  hintText: 'x2',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    b1 = double.parse(value);
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
                  hintText: 'x3',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    c = double.parse(value);
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
